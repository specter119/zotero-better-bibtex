declare const Components: any

import { Preferences as Prefs } from './prefs.ts'

function sleep(ms) {
  return (new Promise(resolve => setTimeout(resolve, ms)))
}

function encode(params) {
  const encoded = []
  for (const [key, value] of Object.entries(params)) {
    encoded.push(`${encodeURIComponent(key)}=${encodeURIComponent(value as string)}`)
  }
  return encoded.join('&').replace(/%20/g, '+')
}

interface IXMLHttpOptions {
  headers?: { [key: string]: string },
  method?: string,
  body?: string | FormData,
}

export class ShareLaTeX {
  private channel: string
  private cookie: string
  private csrf: string
  private domParser: any

  constructor() {
    this.domParser = Components.classes['@mozilla.org/xmlextras/domparser;1'].createInstance(Components.interfaces.nsIDOMParser)
  }

  public async login() {
    // get login page to get _csrf
    let page = await this.fetch('https://www.sharelatex.com/login')
    const doc = this.domParser.parseFromString(page.response, 'text/html') as XMLDocument
    this.csrf = Array.from(doc.getElementsByTagName('input')).find(input => input.getAttribute('name') === '_csrf').getAttribute('value')

    // post login page to get session cookie
    page = await this.fetch('https://www.sharelatex.com/login', {
      method: 'POST',
      headers: {
        'Content-type': 'application/x-www-form-urlencoded',
      },
      body: encode({
        email: Prefs.get('ShareLaTeX_email'),
        password: Prefs.get('ShareLaTeX_password'),
        _csrf: this.csrf,
        redir: '',
      }),
    })
    if (JSON.parse(page.response).redir !== '/project') throw new Error(`unexpected response: ${page.response}`)

    this.cookie = page.getResponseHeader('Set-Cookie')
  }

  public async projects() {
    // get projects list
    const page = await this.fetch('https://www.sharelatex.com/project', {
      headers: { Cookie: this.cookie },
    })
    const doc = this.domParser.parseFromString(page.response, 'text/html')
    return JSON.parse(doc.getElementById('data').textContent).projects
  }

  // select a project, in my case the project named 'MWE'
  // var project = projects.find(project => project.name === 'MWE')

  public async upload(projectId, filename, contents) {
    // get the channel Id
    const channel = await this.fetch(`https://www.sharelatex.com/socket.io/1/?t=${Date.now().toString()}`, {
      headers: { Cookie: this.cookie },
    })
    this.channel = channel.response.split(':')[0]

    // connect to ShareLaTeX
    await this.expect(/^1::$/)

    // get "connection accepted"
    const accepted = await this.expect(/^5:::({.+})$/)
    if (JSON.parse(accepted[1]).name !== 'connectionAccepted') throw new Error(`connected rejected: ${accepted.toString()}`)

    await sleep(200) // tslint:disable-line:no-magic-numbers

    // join the project picked out above
    await this.expect(/^1$/, `5:1+::${JSON.stringify({name: 'joinProject', args: [{ project_id: projectId }]})}`)

    await sleep(200) // tslint:disable-line:no-magic-numbers

    // get "join accepted" and pick out the root folder
    let project = await this.expect(/^6:::1\+(\[.+\])$/)
    project = JSON.parse(project[1])[1]
    project = {
      id: project._id,
      root: project.rootFolder[0]._id,
      docs: project.rootFolder[0].docs.reduce((docs, doc) => { docs[doc._id] = doc.name; return docs }, {}),
    }

    // construct the form post
    const body = new FormData()
    body.append('qqfile', new Blob([contents]), filename)

    const params = encode({
      folder_id: project.root,
      _csrf: this.csrf,
      qquuid: `${project.id}-${filename}`,
      qqfilename: filename,
      qqtotalfilesize: contents.length,
    })

    // upload the bib file
    const upload = await this.fetch(`https://www.sharelatex.com/project/${project.id}/upload?${params}`, {
      headers: { Cookie: this.cookie },
      body,
      method: 'POST',
    })
    const status = JSON.parse(upload.response)
    if (!status.success) throw new Error(`upload: expected success, got ${upload.response}`)

    // great success!
    return status.entity_id
  }

  // promisified XHR
  private async fetch(url, options: IXMLHttpOptions = {}): Promise<XMLHttpRequest> {
    return new Promise((resolve, reject) => {
      const req = new XMLHttpRequest()
      req.open(options.method || 'GET', url)

      for (const [key, value] of Object.entries(options.headers || {})) {
        req.setRequestHeader(key, value)
      }

      req.onload = () => {
        if (req.status === 200) { // tslint:disable-line:no-magic-numbers
          resolve(req)
        } else {
          reject(Error(req.statusText))
        }
      }

      req.onerror = () => {
        reject(Error('Network Error'))
      }

      req.send(options.body || undefined)
    }) as Promise<XMLHttpRequest>
  }

  private async expect(expected, data = null) {
    const poll = await this.fetch(`https://www.sharelatex.com/socket.io/1/xhr-polling/${this.channel}?t=${Date.now().toString()}`, {
      headers: { Cookie: this.cookie },
      method: data ? 'POST' : 'GET',
      body: data,
    })
    const m = poll.response.match(expected)
    if (!m) throw new Error(`expected ${expected}, got ${poll.response}`)
    return m
  }
}

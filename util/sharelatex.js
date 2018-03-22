try {
  var DOMParser = Components.classes['@mozilla.org/xmlextras/domparser;1'].createInstance(Components.interfaces.nsIDOMParser);

  // async sleep
  function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
  }

  // urlencode params
  function encode(params) {
    var encoded = []
    for (const [key, value] of Object.entries(params)) {
      encoded.push(`${encodeURIComponent(key)}=${encodeURIComponent(value)}`)
    }
    return encoded.join('&').replace(/%20/g, '+');
  }

  // promisified XHR
  async function _fetch(url, options) {
    if (!options) options = {};
    if (!options.method) options.method = 'GET';

    return new Promise(function(resolve, reject) {
      var req = new XMLHttpRequest();
      req.open(options.method, url);

      if (options.headers) {
        for (const [key, value] of Object.entries(options.headers)) {
          req.setRequestHeader(key, value);
        }
      }

      req.onload = function() {
        if (req.status == 200) {
          resolve(req);
        }
        else {
          reject(Error(req.statusText));
        }
      };

      req.onerror = function() {
        reject(Error("Network Error"));
      };

      req.send(options.body);
    });
  }

  // simple expect-send
  async function expect(channel, cookie, expected, data) {
    var poll = await _fetch(`https://www.sharelatex.com/socket.io/1/xhr-polling/${channel}?t=${Date.now().toString()}`, {
      headers: { Cookie: cookie },
      method: data ? 'POST' : 'GET',
      body: data,
    })
    var m = poll.response.match(expected);
    if (!m) throw new Error(`expected ${expected}, got ${poll.response}`);
    return m;
  }

  // get login page to get _csrf
  var page = await _fetch('https://www.sharelatex.com/login');
  var doc = DOMParser.parseFromString(page.response, 'text/html');
  var _csrf = Array.from(doc.getElementsByTagName('input')).find(input => input.getAttribute('name') === '_csrf').getAttribute('value');

  // post login page to get session cookie
  var page = await _fetch('https://www.sharelatex.com/login', {
    method: 'POST',
    headers: {
      "Content-type": "application/x-www-form-urlencoded"
    },
    body: encode({
      email: Zotero.Prefs.get('translators.better-bibtex.ShareLaTeX_email'),
      password: Zotero.Prefs.get('translators.better-bibtex.ShareLaTeX_password'),
      _csrf: _csrf,
      redir: '',
    }),
  });
  var cookie = page.getResponseHeader('Set-Cookie');
  var response = JSON.parse(page.response);

  if (response.redir !== '/project') throw new Error(`unexpected response: ${page.response}`);

  // get projects list
  var page = await _fetch('https://www.sharelatex.com/project', {
    headers: { Cookie: cookie }
  })
  var doc = DOMParser.parseFromString(page.response, 'text/html');
  var projects = JSON.parse(doc.getElementById('data').textContent).projects;

  // select a project, in my case the project named 'MWE'
  var project = projects.find(project => project.name === 'MWE');

  // get the channel ID
  var timestamp = Date.now().toString()
  var channel = await _fetch(`https://www.sharelatex.com/socket.io/1/?t=${timestamp}`, {
    headers: { Cookie: cookie }
  });
  channel = channel.response.split(':')[0];

  // connect to ShareLaTeX
  await expect(channel, cookie, /^1::$/);

  // get "connection accepted"
  var accepted = await expect(channel, cookie, /^5:::({.+})$/);
  if (JSON.parse(accepted[1]).name !== 'connectionAccepted') throw new Error(`connected rejected: ${accepted.toString()}`);

  await sleep(200);

  // join the project picked out above
  var join = await expect(channel, cookie, /^1$/, `5:1+::${JSON.stringify({name: 'joinProject', args: [{ project_id: project.id }]})}`)

  await sleep(200);

  // get "join accepted" and pick out the root folder
  project = await expect(channel, cookie, /^6:::1\+(\[.+\])$/);
  project = JSON.parse(project[1])[1];
  project = {
    id: project._id,
    root: project.rootFolder[0]._id,
    docs: project.rootFolder[0].docs.reduce((docs, doc) => { docs[doc._id] = doc.name; return docs }, {}),
  }

  // construct the form post
  var bib = 'heyns';
  var filename = 'better-bibtex.bib';

  var body = new FormData();
  body.append('qqfile', new Blob([bib]), filename);

  var params = encode({
    folder_id: project.root,
    _csrf: _csrf,
    qquuid: `${project.id}-${filename}`,
    qqfilename: filename,
    qqtotalfilesize: bib.length,
  });

  // upload the bib file
  var upload = await _fetch(`https://www.sharelatex.com/project/${project.id}/upload?${params}`, {
    headers: { Cookie: cookie },
    body: body,
    method: 'POST',
  })
  if (!JSON.parse(upload.response).success) throw new Error(`upload: expected success, got ${upload.response}`);

  // great success!
  return upload.response;

} catch (err) {
  return `Oops; ${err.message}: ${err.stack}`;
}

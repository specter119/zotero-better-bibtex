var DOMParser = Components.classes['@mozilla.org/xmlextras/domparser;1'].createInstance(Components.interfaces.nsIDOMParser);

var loginPage;
var _csrf;
var chatter = [];

try {
  loginPage = await fetch('https://www.sharelatex.com/login', {
    cache: 'no-cache',
    credentials: 'include',
    method: 'GET',
    mode: 'same-origin',
    redirect: 'follow',
    // referrer: 'no-referrer',
  });

  var doc = DOMParser.parseFromString(await loginPage.text(), 'text/html');
  _csrf = Array.from(doc.getElementsByTagName('input')).filter(input => input.getAttribute('name') === '_csrf').map(input => input.getAttribute('value')).join(',');
} catch (err) {
  return `could not get login page: ${err.message}, ${JSON.stringify(err)}`;
}

function encode(params) {
  var encoded = []
  for (const [key, value] of Object.entries(params)) {
    encoded.push(`${encodeURIComponent(key)}=${encodeURIComponent(value)}`)
  }
  return encoded.join('&').replace(/%20/g, '+');
}

try {
  loginPage = await fetch('https://www.sharelatex.com/login', {
    body: encode({
      email: Zotero.Prefs.get('translators.better-bibtex.ShareLaTeX_email'),
      password: Zotero.Prefs.get('translators.better-bibtex.ShareLaTeX_password'),
      _csrf: _csrf,
      redir: '',
    }),
    cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
    credentials: 'include', // include, same-origin, *omit
    headers: {
      'content-type': 'application/x-www-form-urlencoded',
    },
    method: 'POST', // *GET, POST, PUT, DELETE, etc.
    mode: 'cors', // no-cors, cors, *same-origin
    redirect: 'follow', // *manual, follow, error
    referrer: 'no-referrer', // *client, no-referrer
  });
} catch (err) {
  return `could not login: ${err.message} ${JSON.stringify(err)}`;
}
var loggedIn = await loginPage.json();

if (loggedIn.redir !== '/project') throw new Error('not authenticated');

var projectPage;
var projects = null;
try {
  projectPage = await fetch('https://www.sharelatex.com/project', {
    cache: 'no-cache',
    credentials: 'include',
    method: 'GET',
    mode: 'same-origin',
    redirect: 'follow',
    referrer: 'no-referrer',
  });

  var doc = DOMParser.parseFromString(await projectPage.text(), 'text/html')
  projects = JSON.parse(doc.getElementById('data').textContent).projects;
} catch (err) {
  return `could not get projects: ${err.message} ${JSON.stringify(err)}`;
}

var timestamp = Date.now().toString()
var channelInfo = await fetch(`https://www.sharelatex.com/socket.io/1/?t=${timestamp}`)
var channel = (await channelInfo.text()).split(':')[0]

var project = projects.find(project => project.name === 'MWE');

/*
function folderId() {
  return new Promise(function(resolve, reject) {
    var server = new WebSocket(`wss://www.sharelatex.com/socket.io/1/websocket/${channel}`);
    var start = Date.now();

    server.onopen = function() {
      chatter.push([Date.now() - start, 'opened']);
      setTimeout(function() {
        chatter.push([Date.now() - start, 'done']);
        resolve('done');
      }, 2000);
    };

    server.onmessage = function(event) {
      chatter.push([Date.now() - start, event.data]);
    };

    server.onerror = function(err) {
      chatter.push([Date.now() - start, 'err', err]);
      reject(err);
    };

    server.onclose = function(event) {
      chatter.push([Date.now() - start, 'closed', event.code]);
    };
  })
}

await folderId();
*/

async function poll() {
  var url = `https://www.sharelatex.com/socket.io/1/xhr-polling/${channel}?t=${Date.now().toString()}`;
  chatter.push(url);
  var response = await fetch(url, {
    cache: 'no-cache',
    credentials: 'include',
    method: 'GET',
    // mode: 'cors',
    // redirect: 'follow',
    // referrer: 'no-referrer',
  });
  return await response.text();
}

function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}

try {
  chatter.push(await poll());
  await sleep(200);
  chatter.push(await poll());
  await sleep(200);
  chatter.push(await poll());
  await sleep(200);
} catch (err) {
  return `could not poll: ${err.message} ${JSON.stringify(err)}`;
}

return chatter;

/*
var body = new FormData();
try {
  body.append('qqfile', new Blob(['emiliano']), 'better-bibtex.bib')
} catch (err) {
  return `could not create formdata: ${err.message} ${JSON.stringify(err)}`;
}

var params = encode({
  // folder_id = ?
  __csrf: _csrf,
  qquuid: `${project.id}-better-bibtex`,
  qqfilename: 'better-bibtex.bib',
  qqtotalfilesize: 8,
});

try {
  loginPage = await fetch(`https://www.sharelatex.com/project/${project.id}/upload?${params}`, {
    body: body,
    cache: 'no-cache',
    credentials: 'include',
    headers: {
      'content-type': 'multipart/form-data',
    },
    method: 'POST',
    mode: 'cors',
    redirect: 'follow',
    referrer: 'no-referrer',
  });
} catch (err) {
  return `could not post bibfile: ${err.message} ${JSON.stringify(err)}`;
}

return loginPage.statusText
*/

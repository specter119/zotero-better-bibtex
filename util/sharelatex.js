var DOMParser = Components.classes['@mozilla.org/xmlextras/domparser;1'].createInstance(Components.interfaces.nsIDOMParser);

var loginPage;
var _csrf;

try {
  loginPage = await fetch('https://www.sharelatex.com/login', {
    cache: 'no-cache',
    credentials: 'same-origin',
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


var encoded = [
  `email=${encodeURIComponent(Zotero.Prefs.get('translators.better-bibtex.ShareLaTeX_email'))}`,
  `password=${encodeURIComponent(Zotero.Prefs.get('translators.better-bibtex.ShareLaTeX_password'))}`,
  `_csrf=${encodeURIComponent(_csrf)}`,
  `redir=${encodeURIComponent('')}`,
].join('&').replace(/%20/g, '+');

try {
  loginPage = await fetch('https://www.sharelatex.com/login', {
    body: encoded,
    cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
    credentials: 'same-origin', // include, same-origin, *omit
    headers: {
      'content-type': 'application/x-www-form-urlencoded',
      // 'cookie': loginPage.getResponseHeader('Set-Cookie'),
    },
    method: 'POST', // *GET, POST, PUT, DELETE, etc.
    mode: 'cors', // no-cors, cors, *same-origin
    redirect: 'follow', // *manual, follow, error
    referrer: 'no-referrer', // *client, no-referrer
  });
} catch (err) {
  return `could not login: ${JSON.stringify(err)}`;
}
var loggedIn = await loginPage.json();

if (loggedIn.redir !== '/project') throw new Error('not authenticated');

var projectPage;
var projects = null;
try {
  projectPage = await fetch('https://www.sharelatex.com/project', {
    cache: 'no-cache',
    credentials: 'same-origin',
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

return projects.find(project => project.name === 'MWE')

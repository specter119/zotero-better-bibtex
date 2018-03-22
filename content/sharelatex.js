"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = y[op[0] & 2 ? "return" : op[0] ? "throw" : "next"]) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [0, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
exports.__esModule = true;
function sleep(ms) {
    return (new Promise(function (resolve) { return setTimeout(resolve, ms); }));
}
function encode(params) {
    var encoded = [];
    var key;
    var value;
    for (var _i = 0, _a = Object.entries(params); _i < _a.length; _i++) {
        _b = _a[_i], key = _b[0], value = _b[1];
        encoded.push(encodeURIComponent(key) + "=" + encodeURIComponent(value));
    }
    return encoded.join('&').replace(/%20/g, '+');
    var _b;
}
var ShareLaTeX = /** @class */ (function () {
    function ShareLaTeX() {
        this.domParser = Components.classes['@mozilla.org/xmlextras/domparser;1'].createInstance(Components.interfaces.nsIDOMParser);
    }
    ShareLaTeX.prototype.login = function () {
        return __awaiter(this, void 0, void 0, function () {
            var page, doc;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.fetch('https://www.sharelatex.com/login')];
                    case 1:
                        page = _a.sent();
                        doc = this.domParser.parseFromString(page.response, 'text/html');
                        this.csrf = Array.from(doc.getElementsByTagName('input')).find(function (input) { return input.getAttribute('name') === '_csrf'; }).getAttribute('value');
                        return [4 /*yield*/, this.fetch('https://www.sharelatex.com/login', {
                                method: 'POST',
                                headers: {
                                    'Content-type': 'application/x-www-form-urlencoded'
                                },
                                body: encode({
                                    email: Zotero.Prefs.get('translators.better-bibtex.ShareLaTeX_email'),
                                    password: Zotero.Prefs.get('translators.better-bibtex.ShareLaTeX_password'),
                                    _csrf: this.csrf,
                                    redir: ''
                                })
                            })];
                    case 2:
                        // post login page to get session cookie
                        page = _a.sent();
                        if (JSON.parse(page.response).redir !== '/project')
                            throw new Error("unexpected response: " + page.response);
                        this.cookie = page.getResponseHeader('Set-Cookie');
                        return [2 /*return*/];
                }
            });
        });
    };
    ShareLaTeX.prototype.projects = function () {
        return __awaiter(this, void 0, void 0, function () {
            var page, doc;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.fetch('https://www.sharelatex.com/project', {
                            headers: { Cookie: this.cookie }
                        })];
                    case 1:
                        page = _a.sent();
                        doc = this.domParser.parseFromString(page.response, 'text/html');
                        return [2 /*return*/, JSON.parse(doc.getElementById('data').textContent).projects];
                }
            });
        });
    };
    // select a project, in my case the project named 'MWE'
    // var project = projects.find(project => project.name === 'MWE')
    ShareLaTeX.prototype.upload = function (projectId, filename, contents) {
        return __awaiter(this, void 0, void 0, function () {
            var _a, accepted, project, body, params, upload, status;
            return __generator(this, function (_b) {
                switch (_b.label) {
                    case 0:
                        // get the channel Id
                        _a = this;
                        return [4 /*yield*/, this.fetch("https://www.sharelatex.com/socket.io/1/?t=" + Date.now().toString(), {
                                headers: { Cookie: cookie }
                            })];
                    case 1:
                        // get the channel Id
                        _a.channel = _b.sent();
                        this.channel = this.channel.response.split(':')[0];
                        // connect to ShareLaTeX
                        return [4 /*yield*/, this.expect(/^1::$/)
                            // get "connection accepted"
                        ];
                    case 2:
                        // connect to ShareLaTeX
                        _b.sent();
                        return [4 /*yield*/, this.expect(/^5:::({.+})$/)];
                    case 3:
                        accepted = _b.sent();
                        if (JSON.parse(accepted[1]).name !== 'connectionAccepted')
                            throw new Error("connected rejected: " + accepted.toString());
                        return [4 /*yield*/, sleep(200)
                            // join the project picked out above
                        ]; // tslint:disable-line:no-magic-numbers
                    case 4:
                        _b.sent(); // tslint:disable-line:no-magic-numbers
                        // join the project picked out above
                        return [4 /*yield*/, this.expect(/^1$/, "5:1+::" + JSON.stringify({ name: 'joinProject', args: [{ project_id: projectId }] }))];
                    case 5:
                        // join the project picked out above
                        _b.sent();
                        return [4 /*yield*/, sleep(200)
                            // get "join accepted" and pick out the root folder
                        ]; // tslint:disable-line:no-magic-numbers
                    case 6:
                        _b.sent(); // tslint:disable-line:no-magic-numbers
                        return [4 /*yield*/, this.expect(/^6:::1\+(\[.+\])$/)];
                    case 7:
                        project = _b.sent();
                        project = JSON.parse(project[1])[1];
                        project = {
                            id: project._id,
                            root: project.rootFolder[0]._id,
                            docs: project.rootFolder[0].docs.reduce(function (docs, doc) { docs[doc._id] = doc.name; return docs; }, {})
                        };
                        body = new FormData();
                        body.append('qqfile', new Blob([contents]), filename);
                        params = encode({
                            folder_id: project.root,
                            _csrf: this.csrf,
                            qquuid: project.id + "-" + filename,
                            qqfilename: filename,
                            qqtotalfilesize: contents.length
                        });
                        return [4 /*yield*/, this.fetch("https://www.sharelatex.com/project/" + project.id + "/upload?" + params, {
                                headers: { Cookie: this.cookie },
                                body: body,
                                method: 'POST'
                            })];
                    case 8:
                        upload = _b.sent();
                        status = JSON.parse(upload.response);
                        if (!status.success)
                            throw new Error("upload: expected success, got " + upload.response);
                        // great success!
                        return [2 /*return*/, status.entity_id];
                }
            });
        });
    };
    // promisified XHR
    ShareLaTeX.prototype.fetch = function (url, options) {
        if (options === void 0) { options = {}; }
        return __awaiter(this, void 0, void 0, function () {
            return __generator(this, function (_a) {
                return [2 /*return*/, new Promise(function (resolve, reject) {
                        var req = new XMLHttpRequest();
                        req.open(options.method || 'GET', url);
                        for (var _i = 0, _a = Object.entries(options.headers || {}); _i < _a.length; _i++) {
                            var _b = _a[_i], key = _b[0], value = _b[1];
                            req.setRequestHeader(key, value);
                        }
                        req.onload = function () {
                            if (req.status === 200) {
                                resolve(req);
                            }
                            else {
                                reject(Error(req.statusText));
                            }
                        };
                        req.onerror = function () {
                            reject(Error('Network Error'));
                        };
                        req.send(options.body);
                    })];
            });
        });
    };
    ShareLaTeX.prototype.expect = function (expected, data) {
        return __awaiter(this, void 0, void 0, function () {
            var poll, m;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.fetch("https://www.sharelatex.com/socket.io/1/xhr-polling/" + this.channel + "?t=" + Date.now().toString(), {
                            headers: { Cookie: this.cookie },
                            method: data ? 'POST' : 'GET',
                            body: data
                        })];
                    case 1:
                        poll = _a.sent();
                        m = poll.response.match(expected);
                        if (!m)
                            throw new Error("expected " + expected + ", got " + poll.response);
                        return [2 /*return*/, m];
                }
            });
        });
    };
    return ShareLaTeX;
}());
exports.ShareLaTeX = ShareLaTeX;

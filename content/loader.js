if (!Zotero.BetterBibTeX) {
  Zotero.BetterBibTeX = {};

  window.addEventListener('load', function() {
    try {
      Zotero.debug("{better-bibtex}: loading better-bibtex.js");
      var loader = Components.classes['@mozilla.org/moz/jssubscript-loader;1'].getService(Components.interfaces.mozIJSSubScriptLoader);
      loader.loadSubScript("chrome://zotero-better-bibtex/content/better-bibtex.js");
      Zotero.debug("{better-bibtex}: better-bibtex.js loaded");
    } catch (err) {
      Zotero.debug("{better-bibtex:ERROR}: better-bibtex.js load failed: " + err + "\n" + err.stack);
    }
  }, false)
}
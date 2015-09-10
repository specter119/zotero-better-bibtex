LaTeX = {} unless LaTeX
LaTeX.toLaTeX = { unicode: Object.create(null), ascii: Object.create(null) }
LaTeX.toLaTeX.unicode.math =
  '<': "<"
  '>': ">"
  '\\': "\\backslash"
LaTeX.toLaTeX.unicode.text =
  '#': "\\#"
  '$': "{\\textdollar}"
  '%': "\\%"
  '&': "\\&"
  '[': "{[}"
  '^': "\\^{}"
  '_': "\\_"
  '{': "\\{"
  '}': "\\}"
  '~': "{\\textasciitilde}"
  '\u00A0': " "
LaTeX.toLaTeX.ascii.math =
  '<': "<"
  '>': ">"
  '\\': "\\backslash"
  '\u00AC': "{\\lnot}"
  '\u00AD': "\\-"
  '\u00B1': "{\\pm}"
  '\u00B2': "{^2}"
  '\u00B3': "{^3}"
  '\u00B5': "\\mathrm{\\mu}"
  '\u00B7': "{\\cdot}"
  '\u00B9': "{^1}"
  '\u00F7': "{\\div}"
  '\u0127': "{\\Elzxh}"
  '\u0192': "f"
  '\u01AA': "{\\eth}"
  '\u0250': "{\\Elztrna}"
  '\u0252': "{\\Elztrnsa}"
  '\u0254': "{\\Elzopeno}"
  '\u0256': "{\\Elzrtld}"
  '\u0259': "{\\Elzschwa}"
  '\u025B': "{\\varepsilon}"
  '\u0263': "{\\Elzpgamma}"
  '\u0264': "{\\Elzpbgam}"
  '\u0265': "{\\Elztrnh}"
  '\u026C': "{\\Elzbtdl}"
  '\u026D': "{\\Elzrtll}"
  '\u026F': "{\\Elztrnm}"
  '\u0270': "{\\Elztrnmlr}"
  '\u0271': "{\\Elzltlmr}"
  '\u0273': "{\\Elzrtln}"
  '\u0277': "{\\Elzclomeg}"
  '\u0279': "{\\Elztrnr}"
  '\u027A': "{\\Elztrnrl}"
  '\u027B': "{\\Elzrttrnr}"
  '\u027C': "{\\Elzrl}"
  '\u027D': "{\\Elzrtlr}"
  '\u027E': "{\\Elzfhr}"
  '\u0282': "{\\Elzrtls}"
  '\u0283': "{\\Elzesh}"
  '\u0287': "{\\Elztrnt}"
  '\u0288': "{\\Elzrtlt}"
  '\u028A': "{\\Elzpupsil}"
  '\u028B': "{\\Elzpscrv}"
  '\u028C': "{\\Elzinvv}"
  '\u028D': "{\\Elzinvw}"
  '\u028E': "{\\Elztrny}"
  '\u0290': "{\\Elzrtlz}"
  '\u0292': "{\\Elzyogh}"
  '\u0294': "{\\Elzglst}"
  '\u0295': "{\\Elzreglst}"
  '\u0296': "{\\Elzinglst}"
  '\u02A4': "{\\Elzdyogh}"
  '\u02A7': "{\\Elztesh}"
  '\u02C8': "{\\Elzverts}"
  '\u02CC': "{\\Elzverti}"
  '\u02D0': "{\\Elzlmrk}"
  '\u02D1': "{\\Elzhlmrk}"
  '\u02D2': "{\\Elzsbrhr}"
  '\u02D3': "{\\Elzsblhr}"
  '\u02D4': "{\\Elzrais}"
  '\u02D5': "{\\Elzlow}"
  '\u0321': "{\\Elzpalh}"
  '\u032A': "{\\Elzsbbrg}"
  '\u038E': "\\mathrm{'Y}"
  '\u038F': "\\mathrm{'\\Omega}"
  '\u0390': "\\acute{\\ddot{\\iota}}"
  '\u0391': "{\\Alpha}"
  '\u0392': "{\\Beta}"
  '\u0393': "{\\Gamma}"
  '\u0394': "{\\Delta}"
  '\u0395': "{\\Epsilon}"
  '\u0396': "{\\Zeta}"
  '\u0397': "{\\Eta}"
  '\u0398': "{\\Theta}"
  '\u0399': "{\\Iota}"
  '\u039A': "{\\Kappa}"
  '\u039B': "{\\Lambda}"
  '\u039C': "M"
  '\u039D': "N"
  '\u039E': "{\\Xi}"
  '\u039F': "O"
  '\u03A0': "{\\Pi}"
  '\u03A1': "{\\Rho}"
  '\u03A3': "{\\Sigma}"
  '\u03A4': "{\\Tau}"
  '\u03A5': "{\\Upsilon}"
  '\u03A6': "{\\Phi}"
  '\u03A7': "{\\Chi}"
  '\u03A8': "{\\Psi}"
  '\u03A9': "{\\Omega}"
  '\u03AA': "\\mathrm{\\ddot{I}}"
  '\u03AB': "\\mathrm{\\ddot{Y}}"
  '\u03AD': "\\acute{\\epsilon}"
  '\u03AE': "\\acute{\\eta}"
  '\u03AF': "\\acute{\\iota}"
  '\u03B0': "\\acute{\\ddot{\\upsilon}}"
  '\u03B1': "{\\alpha}"
  '\u03B2': "{\\beta}"
  '\u03B3': "{\\gamma}"
  '\u03B4': "{\\delta}"
  '\u03B5': "{\\epsilon}"
  '\u03B6': "{\\zeta}"
  '\u03B7': "{\\eta}"
  '\u03B9': "{\\iota}"
  '\u03BA': "{\\kappa}"
  '\u03BB': "{\\lambda}"
  '\u03BC': "{\\mu}"
  '\u03BD': "{\\nu}"
  '\u03BE': "{\\xi}"
  '\u03BF': "o"
  '\u03C0': "{\\pi}"
  '\u03C1': "{\\rho}"
  '\u03C2': "{\\varsigma}"
  '\u03C3': "{\\sigma}"
  '\u03C4': "{\\tau}"
  '\u03C5': "{\\upsilon}"
  '\u03C6': "{\\varphi}"
  '\u03C7': "{\\chi}"
  '\u03C8': "{\\psi}"
  '\u03C9': "{\\omega}"
  '\u03CA': "\\ddot{\\iota}"
  '\u03CB': "\\ddot{\\upsilon}"
  '\u03CD': "\\acute{\\upsilon}"
  '\u03CE': "\\acute{\\omega}"
  '\u03D2': "{\\Upsilon}"
  '\u03D5': "{\\phi}"
  '\u03D6': "{\\varpi}"
  '\u03DA': "{\\Stigma}"
  '\u03DC': "{\\Digamma}"
  '\u03DD': "{\\digamma}"
  '\u03DE': "{\\Koppa}"
  '\u03E0': "{\\Sampi}"
  '\u03F0': "{\\varkappa}"
  '\u03F1': "{\\varrho}"
  '\u03F6': "{\\backepsilon}"
  '\u200A': "{\\mkern1mu}"
  '\u2016': "{\\Vert}"
  '\u201B': "{\\Elzreapos}"
  '\u2032': "{'}"
  '\u2033': "{''}"
  '\u2034': "{'''}"
  '\u2035': "{\\backprime}"
  '\u2057': "''''"
  '\u20DB': "{\\dddot}"
  '\u20DC': "{\\ddddot}"
  '\u2102': "\\mathbb{C}"
  '\u210B': "\\mathscr{H}"
  '\u210C': "\\mathfrak{H}"
  '\u210D': "\\mathbb{H}"
  '\u210F': "{\\hslash}"
  '\u2110': "\\mathscr{I}"
  '\u2111': "\\mathfrak{I}"
  '\u2112': "\\mathscr{L}"
  '\u2113': "\\mathscr{l}"
  '\u2115': "\\mathbb{N}"
  '\u2118': "{\\wp}"
  '\u2119': "\\mathbb{P}"
  '\u211A': "\\mathbb{Q}"
  '\u211B': "\\mathscr{R}"
  '\u211C': "\\mathfrak{R}"
  '\u211D': "\\mathbb{R}"
  '\u211E': "{\\Elzxrat}"
  '\u2124': "\\mathbb{Z}"
  '\u2126': "{\\Omega}"
  '\u2127': "{\\mho}"
  '\u2128': "\\mathfrak{Z}"
  '\u2129': "\\ElsevierGlyph{2129}"
  '\u212C': "\\mathscr{B}"
  '\u212D': "\\mathfrak{C}"
  '\u212F': "\\mathscr{e}"
  '\u2130': "\\mathscr{E}"
  '\u2131': "\\mathscr{F}"
  '\u2133': "\\mathscr{M}"
  '\u2134': "\\mathscr{o}"
  '\u2135': "{\\aleph}"
  '\u2136': "{\\beth}"
  '\u2137': "{\\gimel}"
  '\u2138': "{\\daleth}"
  '\u2153': "\\textfrac{1}{3}"
  '\u2154': "\\textfrac{2}{3}"
  '\u2155': "\\textfrac{1}{5}"
  '\u2156': "\\textfrac{2}{5}"
  '\u2157': "\\textfrac{3}{5}"
  '\u2158': "\\textfrac{4}{5}"
  '\u2159': "\\textfrac{1}{6}"
  '\u215A': "\\textfrac{5}{6}"
  '\u215B': "\\textfrac{1}{8}"
  '\u215C': "\\textfrac{3}{8}"
  '\u215D': "\\textfrac{5}{8}"
  '\u215E': "\\textfrac{7}{8}"
  '\u2190': "{\\leftarrow}"
  '\u2191': "{\\uparrow}"
  '\u2192': "{\\rightarrow}"
  '\u2193': "{\\downarrow}"
  '\u2194': "{\\leftrightarrow}"
  '\u2195': "{\\updownarrow}"
  '\u2196': "{\\nwarrow}"
  '\u2197': "{\\nearrow}"
  '\u2198': "{\\searrow}"
  '\u2199': "{\\swarrow}"
  '\u219A': "{\\nleftarrow}"
  '\u219B': "{\\nrightarrow}"
  '\u219C': "{\\arrowwaveright}"
  '\u219D': "{\\arrowwaveright}"
  '\u219E': "{\\twoheadleftarrow}"
  '\u21A0': "{\\twoheadrightarrow}"
  '\u21A2': "{\\leftarrowtail}"
  '\u21A3': "{\\rightarrowtail}"
  '\u21A6': "{\\mapsto}"
  '\u21A9': "{\\hookleftarrow}"
  '\u21AA': "{\\hookrightarrow}"
  '\u21AB': "{\\looparrowleft}"
  '\u21AC': "{\\looparrowright}"
  '\u21AD': "{\\leftrightsquigarrow}"
  '\u21AE': "{\\nleftrightarrow}"
  '\u21B0': "{\\Lsh}"
  '\u21B1': "{\\Rsh}"
  '\u21B3': "\\ElsevierGlyph{21B3}"
  '\u21B6': "{\\curvearrowleft}"
  '\u21B7': "{\\curvearrowright}"
  '\u21BA': "{\\circlearrowleft}"
  '\u21BB': "{\\circlearrowright}"
  '\u21BC': "{\\leftharpoonup}"
  '\u21BD': "{\\leftharpoondown}"
  '\u21BE': "{\\upharpoonright}"
  '\u21BF': "{\\upharpoonleft}"
  '\u21C0': "{\\rightharpoonup}"
  '\u21C1': "{\\rightharpoondown}"
  '\u21C2': "{\\downharpoonright}"
  '\u21C3': "{\\downharpoonleft}"
  '\u21C4': "{\\rightleftarrows}"
  '\u21C5': "{\\dblarrowupdown}"
  '\u21C6': "{\\leftrightarrows}"
  '\u21C7': "{\\leftleftarrows}"
  '\u21C8': "{\\upuparrows}"
  '\u21C9': "{\\rightrightarrows}"
  '\u21CA': "{\\downdownarrows}"
  '\u21CB': "{\\leftrightharpoons}"
  '\u21CC': "{\\rightleftharpoons}"
  '\u21CD': "{\\nLeftarrow}"
  '\u21CE': "{\\nLeftrightarrow}"
  '\u21CF': "{\\nRightarrow}"
  '\u21D0': "{\\Leftarrow}"
  '\u21D1': "{\\Uparrow}"
  '\u21D2': "{\\Rightarrow}"
  '\u21D3': "{\\Downarrow}"
  '\u21D4': "{\\Leftrightarrow}"
  '\u21D5': "{\\Updownarrow}"
  '\u21DA': "{\\Lleftarrow}"
  '\u21DB': "{\\Rrightarrow}"
  '\u21DD': "{\\rightsquigarrow}"
  '\u21F5': "{\\DownArrowUpArrow}"
  '\u2200': "{\\forall}"
  '\u2201': "{\\complement}"
  '\u2202': "{\\partial}"
  '\u2203': "{\\exists}"
  '\u2204': "{\\nexists}"
  '\u2205': "{\\varnothing}"
  '\u2207': "{\\nabla}"
  '\u2208': "{\\in}"
  '\u2209': "{\\not\\in}"
  '\u220B': "{\\ni}"
  '\u220C': "{\\not\\ni}"
  '\u220F': "{\\prod}"
  '\u2210': "{\\coprod}"
  '\u2211': "{\\sum}"
  '\u2213': "{\\mp}"
  '\u2214': "{\\dotplus}"
  '\u2216': "{\\setminus}"
  '\u2217': "{_\\ast}"
  '\u2218': "{\\circ}"
  '\u2219': "{\\bullet}"
  '\u221A': "{\\surd}"
  '\u221D': "{\\propto}"
  '\u221E': "{\\infty}"
  '\u221F': "{\\rightangle}"
  '\u2220': "{\\angle}"
  '\u2221': "{\\measuredangle}"
  '\u2222': "{\\sphericalangle}"
  '\u2223': "{\\mid}"
  '\u2224': "{\\nmid}"
  '\u2225': "{\\parallel}"
  '\u2226': "{\\nparallel}"
  '\u2227': "{\\wedge}"
  '\u2228': "{\\vee}"
  '\u2229': "{\\cap}"
  '\u222A': "{\\cup}"
  '\u222B': "{\\int}"
  '\u222C': "{\\int\\!\\int}"
  '\u222D': "{\\int\\!\\int\\!\\int}"
  '\u222E': "{\\oint}"
  '\u222F': "{\\surfintegral}"
  '\u2230': "{\\volintegral}"
  '\u2231': "{\\clwintegral}"
  '\u2232': "\\ElsevierGlyph{2232}"
  '\u2233': "\\ElsevierGlyph{2233}"
  '\u2234': "{\\therefore}"
  '\u2235': "{\\because}"
  '\u2237': "{\\Colon}"
  '\u2238': "\\ElsevierGlyph{2238}"
  '\u223A': "\\mathbin{{:}\\!\\!{-}\\!\\!{:}}"
  '\u223B': "{\\homothetic}"
  '\u223C': "{\\sim}"
  '\u223D': "{\\backsim}"
  '\u223E': "{\\lazysinv}"
  '\u2240': "{\\wr}"
  '\u2241': "{\\not\\sim}"
  '\u2242': "\\ElsevierGlyph{2242}"
  '\u2243': "{\\simeq}"
  '\u2244': "{\\not\\simeq}"
  '\u2245': "{\\cong}"
  '\u2246': "{\\approxnotequal}"
  '\u2247': "{\\not\\cong}"
  '\u2248': "{\\approx}"
  '\u2249': "{\\not\\approx}"
  '\u224A': "{\\approxeq}"
  '\u224B': "{\\tildetrpl}"
  '\u224C': "{\\allequal}"
  '\u224D': "{\\asymp}"
  '\u224E': "{\\Bumpeq}"
  '\u224F': "{\\bumpeq}"
  '\u2250': "{\\doteq}"
  '\u2251': "{\\doteqdot}"
  '\u2252': "{\\fallingdotseq}"
  '\u2253': "{\\risingdotseq}"
  '\u2255': "=:"
  '\u2256': "{\\eqcirc}"
  '\u2257': "{\\circeq}"
  '\u2259': "{\\estimates}"
  '\u225A': "\\ElsevierGlyph{225A}"
  '\u225B': "{\\starequal}"
  '\u225C': "{\\triangleq}"
  '\u225F': "\\ElsevierGlyph{225F}"
  '\u2260': "\\not ="
  '\u2261': "{\\equiv}"
  '\u2262': "{\\not\\equiv}"
  '\u2264': "{\\leq}"
  '\u2265': "{\\geq}"
  '\u2266': "{\\leqq}"
  '\u2267': "{\\geqq}"
  '\u2268': "{\\lneqq}"
  '\u2269': "{\\gneqq}"
  '\u226A': "{\\ll}"
  '\u226B': "{\\gg}"
  '\u226C': "{\\between}"
  '\u226D': "{\\not\\kern-0.3em\\times}"
  '\u226E': "\\not<"
  '\u226F': "\\not>"
  '\u2270': "{\\not\\leq}"
  '\u2271': "{\\not\\geq}"
  '\u2272': "{\\lessequivlnt}"
  '\u2273': "{\\greaterequivlnt}"
  '\u2274': "\\ElsevierGlyph{2274}"
  '\u2275': "\\ElsevierGlyph{2275}"
  '\u2276': "{\\lessgtr}"
  '\u2277': "{\\gtrless}"
  '\u2278': "{\\notlessgreater}"
  '\u2279': "{\\notgreaterless}"
  '\u227A': "{\\prec}"
  '\u227B': "{\\succ}"
  '\u227C': "{\\preccurlyeq}"
  '\u227D': "{\\succcurlyeq}"
  '\u227E': "{\\precapprox}"
  '\u227F': "{\\succapprox}"
  '\u2280': "{\\not\\prec}"
  '\u2281': "{\\not\\succ}"
  '\u2282': "{\\subset}"
  '\u2283': "{\\supset}"
  '\u2284': "{\\not\\subset}"
  '\u2285': "{\\not\\supset}"
  '\u2286': "{\\subseteq}"
  '\u2287': "{\\supseteq}"
  '\u2288': "{\\not\\subseteq}"
  '\u2289': "{\\not\\supseteq}"
  '\u228A': "{\\subsetneq}"
  '\u228B': "{\\supsetneq}"
  '\u228E': "{\\uplus}"
  '\u228F': "{\\sqsubset}"
  '\u2290': "{\\sqsupset}"
  '\u2291': "{\\sqsubseteq}"
  '\u2292': "{\\sqsupseteq}"
  '\u2293': "{\\sqcap}"
  '\u2294': "{\\sqcup}"
  '\u2295': "{\\oplus}"
  '\u2296': "{\\ominus}"
  '\u2297': "{\\otimes}"
  '\u2298': "{\\oslash}"
  '\u2299': "{\\odot}"
  '\u229A': "{\\circledcirc}"
  '\u229B': "{\\circledast}"
  '\u229D': "{\\circleddash}"
  '\u229E': "{\\boxplus}"
  '\u229F': "{\\boxminus}"
  '\u22A0': "{\\boxtimes}"
  '\u22A1': "{\\boxdot}"
  '\u22A2': "{\\vdash}"
  '\u22A3': "{\\dashv}"
  '\u22A4': "{\\top}"
  '\u22A5': "{\\perp}"
  '\u22A7': "{\\truestate}"
  '\u22A8': "{\\forcesextra}"
  '\u22A9': "{\\Vdash}"
  '\u22AA': "{\\Vvdash}"
  '\u22AB': "{\\VDash}"
  '\u22AC': "{\\nvdash}"
  '\u22AD': "{\\nvDash}"
  '\u22AE': "{\\nVdash}"
  '\u22AF': "{\\nVDash}"
  '\u22B2': "{\\vartriangleleft}"
  '\u22B3': "{\\vartriangleright}"
  '\u22B4': "{\\trianglelefteq}"
  '\u22B5': "{\\trianglerighteq}"
  '\u22B6': "{\\original}"
  '\u22B7': "{\\image}"
  '\u22B8': "{\\multimap}"
  '\u22B9': "{\\hermitconjmatrix}"
  '\u22BA': "{\\intercal}"
  '\u22BB': "{\\veebar}"
  '\u22BE': "{\\rightanglearc}"
  '\u22C0': "\\ElsevierGlyph{22C0}"
  '\u22C1': "\\ElsevierGlyph{22C1}"
  '\u22C2': "{\\bigcap}"
  '\u22C3': "{\\bigcup}"
  '\u22C4': "{\\diamond}"
  '\u22C5': "{\\cdot}"
  '\u22C6': "{\\star}"
  '\u22C7': "{\\divideontimes}"
  '\u22C8': "{\\bowtie}"
  '\u22C9': "{\\ltimes}"
  '\u22CA': "{\\rtimes}"
  '\u22CB': "{\\leftthreetimes}"
  '\u22CC': "{\\rightthreetimes}"
  '\u22CD': "{\\backsimeq}"
  '\u22CE': "{\\curlyvee}"
  '\u22CF': "{\\curlywedge}"
  '\u22D0': "{\\Subset}"
  '\u22D1': "{\\Supset}"
  '\u22D2': "{\\Cap}"
  '\u22D3': "{\\Cup}"
  '\u22D4': "{\\pitchfork}"
  '\u22D6': "{\\lessdot}"
  '\u22D7': "{\\gtrdot}"
  '\u22D8': "{\\verymuchless}"
  '\u22D9': "{\\verymuchgreater}"
  '\u22DA': "{\\lesseqgtr}"
  '\u22DB': "{\\gtreqless}"
  '\u22DE': "{\\curlyeqprec}"
  '\u22DF': "{\\curlyeqsucc}"
  '\u22E2': "{\\not\\sqsubseteq}"
  '\u22E3': "{\\not\\sqsupseteq}"
  '\u22E5': "{\\Elzsqspne}"
  '\u22E6': "{\\lnsim}"
  '\u22E7': "{\\gnsim}"
  '\u22E8': "{\\precedesnotsimilar}"
  '\u22E9': "{\\succnsim}"
  '\u22EA': "{\\ntriangleleft}"
  '\u22EB': "{\\ntriangleright}"
  '\u22EC': "{\\ntrianglelefteq}"
  '\u22ED': "{\\ntrianglerighteq}"
  '\u22EE': "{\\vdots}"
  '\u22EF': "{\\cdots}"
  '\u22F0': "{\\upslopeellipsis}"
  '\u22F1': "{\\downslopeellipsis}"
  '\u2306': "{\\perspcorrespond}"
  '\u2308': "{\\lceil}"
  '\u2309': "{\\rceil}"
  '\u230A': "{\\lfloor}"
  '\u230B': "{\\rfloor}"
  '\u2315': "{\\recorder}"
  '\u2316': "\\mathchar\"2208"
  '\u231C': "{\\ulcorner}"
  '\u231D': "{\\urcorner}"
  '\u231E': "{\\llcorner}"
  '\u231F': "{\\lrcorner}"
  '\u2322': "{\\frown}"
  '\u2323': "{\\smile}"
  '\u2329': "{\\langle}"
  '\u232A': "{\\rangle}"
  '\u233D': "\\ElsevierGlyph{E838}"
  '\u23A3': "{\\Elzdlcorn}"
  '\u23B0': "{\\lmoustache}"
  '\u23B1': "{\\rmoustache}"
  '\u24C8': "{\\circledS}"
  '\u2506': "{\\Elzdshfnc}"
  '\u2519': "{\\Elzsqfnw}"
  '\u2571': "{\\diagup}"
  '\u25A1': "{\\square}"
  '\u25AA': "{\\blacksquare}"
  '\u25AD': "\\fbox{~~}"
  '\u25AF': "{\\Elzvrecto}"
  '\u25B1': "\\ElsevierGlyph{E381}"
  '\u25B3': "{\\bigtriangleup}"
  '\u25B4': "{\\blacktriangle}"
  '\u25B5': "{\\vartriangle}"
  '\u25B8': "{\\blacktriangleright}"
  '\u25B9': "{\\triangleright}"
  '\u25BD': "{\\bigtriangledown}"
  '\u25BE': "{\\blacktriangledown}"
  '\u25BF': "{\\triangledown}"
  '\u25C2': "{\\blacktriangleleft}"
  '\u25C3': "{\\triangleleft}"
  '\u25CA': "{\\lozenge}"
  '\u25CB': "{\\bigcirc}"
  '\u25D0': "{\\Elzcirfl}"
  '\u25D1': "{\\Elzcirfr}"
  '\u25D2': "{\\Elzcirfb}"
  '\u25D8': "{\\Elzrvbull}"
  '\u25E7': "{\\Elzsqfl}"
  '\u25E8': "{\\Elzsqfr}"
  '\u25EA': "{\\Elzsqfse}"
  '\u25EF': "{\\bigcirc}"
  '\u2662': "{\\diamond}"
  '\u266D': "{\\flat}"
  '\u266E': "{\\natural}"
  '\u266F': "{\\sharp}"
  '\u27F5': "{\\longleftarrow}"
  '\u27F6': "{\\longrightarrow}"
  '\u27F7': "{\\longleftrightarrow}"
  '\u27F8': "{\\Longleftarrow}"
  '\u27F9': "{\\Longrightarrow}"
  '\u27FA': "{\\Longleftrightarrow}"
  '\u27FC': "{\\longmapsto}"
  '\u27FF': "\\sim\\joinrel\\leadsto"
  '\u2905': "\\ElsevierGlyph{E212}"
  '\u2912': "{\\UpArrowBar}"
  '\u2913': "{\\DownArrowBar}"
  '\u2923': "\\ElsevierGlyph{E20C}"
  '\u2924': "\\ElsevierGlyph{E20D}"
  '\u2925': "\\ElsevierGlyph{E20B}"
  '\u2926': "\\ElsevierGlyph{E20A}"
  '\u2927': "\\ElsevierGlyph{E211}"
  '\u2928': "\\ElsevierGlyph{E20E}"
  '\u2929': "\\ElsevierGlyph{E20F}"
  '\u292A': "\\ElsevierGlyph{E210}"
  '\u2933': "\\ElsevierGlyph{E21C}"
  '\u2936': "\\ElsevierGlyph{E21A}"
  '\u2937': "\\ElsevierGlyph{E219}"
  '\u2940': "{\\Elolarr}"
  '\u2941': "{\\Elorarr}"
  '\u2942': "{\\ElzRlarr}"
  '\u2944': "{\\ElzrLarr}"
  '\u2947': "{\\Elzrarrx}"
  '\u294E': "{\\LeftRightVector}"
  '\u294F': "{\\RightUpDownVector}"
  '\u2950': "{\\DownLeftRightVector}"
  '\u2951': "{\\LeftUpDownVector}"
  '\u2952': "{\\LeftVectorBar}"
  '\u2953': "{\\RightVectorBar}"
  '\u2954': "{\\RightUpVectorBar}"
  '\u2955': "{\\RightDownVectorBar}"
  '\u2956': "{\\DownLeftVectorBar}"
  '\u2957': "{\\DownRightVectorBar}"
  '\u2958': "{\\LeftUpVectorBar}"
  '\u2959': "{\\LeftDownVectorBar}"
  '\u295A': "{\\LeftTeeVector}"
  '\u295B': "{\\RightTeeVector}"
  '\u295C': "{\\RightUpTeeVector}"
  '\u295D': "{\\RightDownTeeVector}"
  '\u295E': "{\\DownLeftTeeVector}"
  '\u295F': "{\\DownRightTeeVector}"
  '\u2960': "{\\LeftUpTeeVector}"
  '\u2961': "{\\LeftDownTeeVector}"
  '\u296E': "{\\UpEquilibrium}"
  '\u296F': "{\\ReverseUpEquilibrium}"
  '\u2970': "{\\RoundImplies}"
  '\u297C': "\\ElsevierGlyph{E214}"
  '\u297D': "\\ElsevierGlyph{E215}"
  '\u2980': "{\\Elztfnc}"
  '\u2985': "\\ElsevierGlyph{3018}"
  '\u2986': "{\\Elroang}"
  '\u2993': "<\\kern-0.58em("
  '\u2994': "\\ElsevierGlyph{E291}"
  '\u2999': "{\\Elzddfnc}"
  '\u299C': "{\\Angle}"
  '\u29A0': "{\\Elzlpargt}"
  '\u29B5': "\\ElsevierGlyph{E260}"
  '\u29B6': "\\ElsevierGlyph{E61B}"
  '\u29CA': "{\\ElzLap}"
  '\u29CB': "{\\Elzdefas}"
  '\u29CF': "{\\LeftTriangleBar}"
  '\u29D0': "{\\RightTriangleBar}"
  '\u29DC': "\\ElsevierGlyph{E372}"
  '\u29EB': "{\\blacklozenge}"
  '\u29F4': "{\\RuleDelayed}"
  '\u2A04': "{\\Elxuplus}"
  '\u2A05': "{\\ElzThr}"
  '\u2A06': "{\\Elxsqcup}"
  '\u2A07': "{\\ElzInf}"
  '\u2A08': "{\\ElzSup}"
  '\u2A0D': "{\\ElzCint}"
  '\u2A0F': "{\\clockoint}"
  '\u2A10': "\\ElsevierGlyph{E395}"
  '\u2A16': "{\\sqrint}"
  '\u2A25': "\\ElsevierGlyph{E25A}"
  '\u2A2A': "\\ElsevierGlyph{E25B}"
  '\u2A2D': "\\ElsevierGlyph{E25C}"
  '\u2A2E': "\\ElsevierGlyph{E25D}"
  '\u2A2F': "{\\ElzTimes}"
  '\u2A34': "\\ElsevierGlyph{E25E}"
  '\u2A35': "\\ElsevierGlyph{E25E}"
  '\u2A3C': "\\ElsevierGlyph{E259}"
  '\u2A3F': "{\\amalg}"
  '\u2A53': "{\\ElzAnd}"
  '\u2A54': "{\\ElzOr}"
  '\u2A55': "\\ElsevierGlyph{E36E}"
  '\u2A56': "{\\ElOr}"
  '\u2A5E': "{\\perspcorrespond}"
  '\u2A5F': "{\\Elzminhat}"
  '\u2A63': "\\ElsevierGlyph{225A}"
  '\u2A6E': "\\stackrel{*}{=}"
  '\u2A75': "{\\Equal}"
  '\u2A7D': "{\\leqslant}"
  '\u2A7E': "{\\geqslant}"
  '\u2A85': "{\\lessapprox}"
  '\u2A86': "{\\gtrapprox}"
  '\u2A87': "{\\lneq}"
  '\u2A88': "{\\gneq}"
  '\u2A89': "{\\lnapprox}"
  '\u2A8A': "{\\gnapprox}"
  '\u2A8B': "{\\lesseqqgtr}"
  '\u2A8C': "{\\gtreqqless}"
  '\u2A95': "{\\eqslantless}"
  '\u2A96': "{\\eqslantgtr}"
  '\u2A9D': "\\Pisymbol{ppi020}{117}"
  '\u2A9E': "\\Pisymbol{ppi020}{105}"
  '\u2AA1': "{\\NestedLessLess}"
  '\u2AA2': "{\\NestedGreaterGreater}"
  '\u2AAF': "{\\preceq}"
  '\u2AB0': "{\\succeq}"
  '\u2AB5': "{\\precneqq}"
  '\u2AB6': "{\\succneqq}"
  '\u2AB7': "{\\precapprox}"
  '\u2AB8': "{\\succapprox}"
  '\u2AB9': "{\\precnapprox}"
  '\u2ABA': "{\\succnapprox}"
  '\u2AC5': "{\\subseteqq}"
  '\u2AC6': "{\\supseteqq}"
  '\u2ACB': "{\\subsetneqq}"
  '\u2ACC': "{\\supsetneqq}"
  '\u2AEB': "\\ElsevierGlyph{E30D}"
  '\u2AF6': "{\\Elztdcol}"
  '\u2AFD': "{{/}\\!\\!{/}}"
  '\u300A': "\\ElsevierGlyph{300A}"
  '\u300B': "\\ElsevierGlyph{300B}"
  '\u3018': "\\ElsevierGlyph{3018}"
  '\u3019': "\\ElsevierGlyph{3019}"
  '\u301A': "{\\openbracketleft}"
  '\u301B': "{\\openbracketright}"
  '\uD835\uDC00': "\\mathbf{A}"
  '\uD835\uDC01': "\\mathbf{B}"
  '\uD835\uDC02': "\\mathbf{C}"
  '\uD835\uDC03': "\\mathbf{D}"
  '\uD835\uDC04': "\\mathbf{E}"
  '\uD835\uDC05': "\\mathbf{F}"
  '\uD835\uDC06': "\\mathbf{G}"
  '\uD835\uDC07': "\\mathbf{H}"
  '\uD835\uDC08': "\\mathbf{I}"
  '\uD835\uDC09': "\\mathbf{J}"
  '\uD835\uDC0A': "\\mathbf{K}"
  '\uD835\uDC0B': "\\mathbf{L}"
  '\uD835\uDC0C': "\\mathbf{M}"
  '\uD835\uDC0D': "\\mathbf{N}"
  '\uD835\uDC0E': "\\mathbf{O}"
  '\uD835\uDC0F': "\\mathbf{P}"
  '\uD835\uDC10': "\\mathbf{Q}"
  '\uD835\uDC11': "\\mathbf{R}"
  '\uD835\uDC12': "\\mathbf{S}"
  '\uD835\uDC13': "\\mathbf{T}"
  '\uD835\uDC14': "\\mathbf{U}"
  '\uD835\uDC15': "\\mathbf{V}"
  '\uD835\uDC16': "\\mathbf{W}"
  '\uD835\uDC17': "\\mathbf{X}"
  '\uD835\uDC18': "\\mathbf{Y}"
  '\uD835\uDC19': "\\mathbf{Z}"
  '\uD835\uDC1A': "\\mathbf{a}"
  '\uD835\uDC1B': "\\mathbf{b}"
  '\uD835\uDC1C': "\\mathbf{c}"
  '\uD835\uDC1D': "\\mathbf{d}"
  '\uD835\uDC1E': "\\mathbf{e}"
  '\uD835\uDC1F': "\\mathbf{f}"
  '\uD835\uDC20': "\\mathbf{g}"
  '\uD835\uDC21': "\\mathbf{h}"
  '\uD835\uDC22': "\\mathbf{i}"
  '\uD835\uDC23': "\\mathbf{j}"
  '\uD835\uDC24': "\\mathbf{k}"
  '\uD835\uDC25': "\\mathbf{l}"
  '\uD835\uDC26': "\\mathbf{m}"
  '\uD835\uDC27': "\\mathbf{n}"
  '\uD835\uDC28': "\\mathbf{o}"
  '\uD835\uDC29': "\\mathbf{p}"
  '\uD835\uDC2A': "\\mathbf{q}"
  '\uD835\uDC2B': "\\mathbf{r}"
  '\uD835\uDC2C': "\\mathbf{s}"
  '\uD835\uDC2D': "\\mathbf{t}"
  '\uD835\uDC2E': "\\mathbf{u}"
  '\uD835\uDC2F': "\\mathbf{v}"
  '\uD835\uDC30': "\\mathbf{w}"
  '\uD835\uDC31': "\\mathbf{x}"
  '\uD835\uDC32': "\\mathbf{y}"
  '\uD835\uDC33': "\\mathbf{z}"
  '\uD835\uDC34': "\\mathsl{A}"
  '\uD835\uDC35': "\\mathsl{B}"
  '\uD835\uDC36': "\\mathsl{C}"
  '\uD835\uDC37': "\\mathsl{D}"
  '\uD835\uDC38': "\\mathsl{E}"
  '\uD835\uDC39': "\\mathsl{F}"
  '\uD835\uDC3A': "\\mathsl{G}"
  '\uD835\uDC3B': "\\mathsl{H}"
  '\uD835\uDC3C': "\\mathsl{I}"
  '\uD835\uDC3D': "\\mathsl{J}"
  '\uD835\uDC3E': "\\mathsl{K}"
  '\uD835\uDC3F': "\\mathsl{L}"
  '\uD835\uDC40': "\\mathsl{M}"
  '\uD835\uDC41': "\\mathsl{N}"
  '\uD835\uDC42': "\\mathsl{O}"
  '\uD835\uDC43': "\\mathsl{P}"
  '\uD835\uDC44': "\\mathsl{Q}"
  '\uD835\uDC45': "\\mathsl{R}"
  '\uD835\uDC46': "\\mathsl{S}"
  '\uD835\uDC47': "\\mathsl{T}"
  '\uD835\uDC48': "\\mathsl{U}"
  '\uD835\uDC49': "\\mathsl{V}"
  '\uD835\uDC4A': "\\mathsl{W}"
  '\uD835\uDC4B': "\\mathsl{X}"
  '\uD835\uDC4C': "\\mathsl{Y}"
  '\uD835\uDC4D': "\\mathsl{Z}"
  '\uD835\uDC4E': "\\mathsl{a}"
  '\uD835\uDC4F': "\\mathsl{b}"
  '\uD835\uDC50': "\\mathsl{c}"
  '\uD835\uDC51': "\\mathsl{d}"
  '\uD835\uDC52': "\\mathsl{e}"
  '\uD835\uDC53': "\\mathsl{f}"
  '\uD835\uDC54': "\\mathsl{g}"
  '\uD835\uDC56': "\\mathsl{i}"
  '\uD835\uDC57': "\\mathsl{j}"
  '\uD835\uDC58': "\\mathsl{k}"
  '\uD835\uDC59': "\\mathsl{l}"
  '\uD835\uDC5A': "\\mathsl{m}"
  '\uD835\uDC5B': "\\mathsl{n}"
  '\uD835\uDC5C': "\\mathsl{o}"
  '\uD835\uDC5D': "\\mathsl{p}"
  '\uD835\uDC5E': "\\mathsl{q}"
  '\uD835\uDC5F': "\\mathsl{r}"
  '\uD835\uDC60': "\\mathsl{s}"
  '\uD835\uDC61': "\\mathsl{t}"
  '\uD835\uDC62': "\\mathsl{u}"
  '\uD835\uDC63': "\\mathsl{v}"
  '\uD835\uDC64': "\\mathsl{w}"
  '\uD835\uDC65': "\\mathsl{x}"
  '\uD835\uDC66': "\\mathsl{y}"
  '\uD835\uDC67': "\\mathsl{z}"
  '\uD835\uDC68': "\\mathbit{A}"
  '\uD835\uDC69': "\\mathbit{B}"
  '\uD835\uDC6A': "\\mathbit{C}"
  '\uD835\uDC6B': "\\mathbit{D}"
  '\uD835\uDC6C': "\\mathbit{E}"
  '\uD835\uDC6D': "\\mathbit{F}"
  '\uD835\uDC6E': "\\mathbit{G}"
  '\uD835\uDC6F': "\\mathbit{H}"
  '\uD835\uDC70': "\\mathbit{I}"
  '\uD835\uDC71': "\\mathbit{J}"
  '\uD835\uDC72': "\\mathbit{K}"
  '\uD835\uDC73': "\\mathbit{L}"
  '\uD835\uDC74': "\\mathbit{M}"
  '\uD835\uDC75': "\\mathbit{N}"
  '\uD835\uDC76': "\\mathbit{O}"
  '\uD835\uDC77': "\\mathbit{P}"
  '\uD835\uDC78': "\\mathbit{Q}"
  '\uD835\uDC79': "\\mathbit{R}"
  '\uD835\uDC7A': "\\mathbit{S}"
  '\uD835\uDC7B': "\\mathbit{T}"
  '\uD835\uDC7C': "\\mathbit{U}"
  '\uD835\uDC7D': "\\mathbit{V}"
  '\uD835\uDC7E': "\\mathbit{W}"
  '\uD835\uDC7F': "\\mathbit{X}"
  '\uD835\uDC80': "\\mathbit{Y}"
  '\uD835\uDC81': "\\mathbit{Z}"
  '\uD835\uDC82': "\\mathbit{a}"
  '\uD835\uDC83': "\\mathbit{b}"
  '\uD835\uDC84': "\\mathbit{c}"
  '\uD835\uDC85': "\\mathbit{d}"
  '\uD835\uDC86': "\\mathbit{e}"
  '\uD835\uDC87': "\\mathbit{f}"
  '\uD835\uDC88': "\\mathbit{g}"
  '\uD835\uDC89': "\\mathbit{h}"
  '\uD835\uDC8A': "\\mathbit{i}"
  '\uD835\uDC8B': "\\mathbit{j}"
  '\uD835\uDC8C': "\\mathbit{k}"
  '\uD835\uDC8D': "\\mathbit{l}"
  '\uD835\uDC8E': "\\mathbit{m}"
  '\uD835\uDC8F': "\\mathbit{n}"
  '\uD835\uDC90': "\\mathbit{o}"
  '\uD835\uDC91': "\\mathbit{p}"
  '\uD835\uDC92': "\\mathbit{q}"
  '\uD835\uDC93': "\\mathbit{r}"
  '\uD835\uDC94': "\\mathbit{s}"
  '\uD835\uDC95': "\\mathbit{t}"
  '\uD835\uDC96': "\\mathbit{u}"
  '\uD835\uDC97': "\\mathbit{v}"
  '\uD835\uDC98': "\\mathbit{w}"
  '\uD835\uDC99': "\\mathbit{x}"
  '\uD835\uDC9A': "\\mathbit{y}"
  '\uD835\uDC9B': "\\mathbit{z}"
  '\uD835\uDC9C': "\\mathscr{A}"
  '\uD835\uDC9E': "\\mathscr{C}"
  '\uD835\uDC9F': "\\mathscr{D}"
  '\uD835\uDCA2': "\\mathscr{G}"
  '\uD835\uDCA5': "\\mathscr{J}"
  '\uD835\uDCA6': "\\mathscr{K}"
  '\uD835\uDCA9': "\\mathscr{N}"
  '\uD835\uDCAA': "\\mathscr{O}"
  '\uD835\uDCAB': "\\mathscr{P}"
  '\uD835\uDCAC': "\\mathscr{Q}"
  '\uD835\uDCAE': "\\mathscr{S}"
  '\uD835\uDCAF': "\\mathscr{T}"
  '\uD835\uDCB0': "\\mathscr{U}"
  '\uD835\uDCB1': "\\mathscr{V}"
  '\uD835\uDCB2': "\\mathscr{W}"
  '\uD835\uDCB3': "\\mathscr{X}"
  '\uD835\uDCB4': "\\mathscr{Y}"
  '\uD835\uDCB5': "\\mathscr{Z}"
  '\uD835\uDCB6': "\\mathscr{a}"
  '\uD835\uDCB7': "\\mathscr{b}"
  '\uD835\uDCB8': "\\mathscr{c}"
  '\uD835\uDCB9': "\\mathscr{d}"
  '\uD835\uDCBB': "\\mathscr{f}"
  '\uD835\uDCBD': "\\mathscr{h}"
  '\uD835\uDCBE': "\\mathscr{i}"
  '\uD835\uDCBF': "\\mathscr{j}"
  '\uD835\uDCC0': "\\mathscr{k}"
  '\uD835\uDCC1': "\\mathscr{l}"
  '\uD835\uDCC2': "\\mathscr{m}"
  '\uD835\uDCC3': "\\mathscr{n}"
  '\uD835\uDCC5': "\\mathscr{p}"
  '\uD835\uDCC6': "\\mathscr{q}"
  '\uD835\uDCC7': "\\mathscr{r}"
  '\uD835\uDCC8': "\\mathscr{s}"
  '\uD835\uDCC9': "\\mathscr{t}"
  '\uD835\uDCCA': "\\mathscr{u}"
  '\uD835\uDCCB': "\\mathscr{v}"
  '\uD835\uDCCC': "\\mathscr{w}"
  '\uD835\uDCCD': "\\mathscr{x}"
  '\uD835\uDCCE': "\\mathscr{y}"
  '\uD835\uDCCF': "\\mathscr{z}"
  '\uD835\uDCD0': "\\mathmit{A}"
  '\uD835\uDCD1': "\\mathmit{B}"
  '\uD835\uDCD2': "\\mathmit{C}"
  '\uD835\uDCD3': "\\mathmit{D}"
  '\uD835\uDCD4': "\\mathmit{E}"
  '\uD835\uDCD5': "\\mathmit{F}"
  '\uD835\uDCD6': "\\mathmit{G}"
  '\uD835\uDCD7': "\\mathmit{H}"
  '\uD835\uDCD8': "\\mathmit{I}"
  '\uD835\uDCD9': "\\mathmit{J}"
  '\uD835\uDCDA': "\\mathmit{K}"
  '\uD835\uDCDB': "\\mathmit{L}"
  '\uD835\uDCDC': "\\mathmit{M}"
  '\uD835\uDCDD': "\\mathmit{N}"
  '\uD835\uDCDE': "\\mathmit{O}"
  '\uD835\uDCDF': "\\mathmit{P}"
  '\uD835\uDCE0': "\\mathmit{Q}"
  '\uD835\uDCE1': "\\mathmit{R}"
  '\uD835\uDCE2': "\\mathmit{S}"
  '\uD835\uDCE3': "\\mathmit{T}"
  '\uD835\uDCE4': "\\mathmit{U}"
  '\uD835\uDCE5': "\\mathmit{V}"
  '\uD835\uDCE6': "\\mathmit{W}"
  '\uD835\uDCE7': "\\mathmit{X}"
  '\uD835\uDCE8': "\\mathmit{Y}"
  '\uD835\uDCE9': "\\mathmit{Z}"
  '\uD835\uDCEA': "\\mathmit{a}"
  '\uD835\uDCEB': "\\mathmit{b}"
  '\uD835\uDCEC': "\\mathmit{c}"
  '\uD835\uDCED': "\\mathmit{d}"
  '\uD835\uDCEE': "\\mathmit{e}"
  '\uD835\uDCEF': "\\mathmit{f}"
  '\uD835\uDCF0': "\\mathmit{g}"
  '\uD835\uDCF1': "\\mathmit{h}"
  '\uD835\uDCF2': "\\mathmit{i}"
  '\uD835\uDCF3': "\\mathmit{j}"
  '\uD835\uDCF4': "\\mathmit{k}"
  '\uD835\uDCF5': "\\mathmit{l}"
  '\uD835\uDCF6': "\\mathmit{m}"
  '\uD835\uDCF7': "\\mathmit{n}"
  '\uD835\uDCF8': "\\mathmit{o}"
  '\uD835\uDCF9': "\\mathmit{p}"
  '\uD835\uDCFA': "\\mathmit{q}"
  '\uD835\uDCFB': "\\mathmit{r}"
  '\uD835\uDCFC': "\\mathmit{s}"
  '\uD835\uDCFD': "\\mathmit{t}"
  '\uD835\uDCFE': "\\mathmit{u}"
  '\uD835\uDCFF': "\\mathmit{v}"
  '\uD835\uDD00': "\\mathmit{w}"
  '\uD835\uDD01': "\\mathmit{x}"
  '\uD835\uDD02': "\\mathmit{y}"
  '\uD835\uDD03': "\\mathmit{z}"
  '\uD835\uDD04': "\\mathfrak{A}"
  '\uD835\uDD05': "\\mathfrak{B}"
  '\uD835\uDD07': "\\mathfrak{D}"
  '\uD835\uDD08': "\\mathfrak{E}"
  '\uD835\uDD09': "\\mathfrak{F}"
  '\uD835\uDD0A': "\\mathfrak{G}"
  '\uD835\uDD0D': "\\mathfrak{J}"
  '\uD835\uDD0E': "\\mathfrak{K}"
  '\uD835\uDD0F': "\\mathfrak{L}"
  '\uD835\uDD10': "\\mathfrak{M}"
  '\uD835\uDD11': "\\mathfrak{N}"
  '\uD835\uDD12': "\\mathfrak{O}"
  '\uD835\uDD13': "\\mathfrak{P}"
  '\uD835\uDD14': "\\mathfrak{Q}"
  '\uD835\uDD16': "\\mathfrak{S}"
  '\uD835\uDD17': "\\mathfrak{T}"
  '\uD835\uDD18': "\\mathfrak{U}"
  '\uD835\uDD19': "\\mathfrak{V}"
  '\uD835\uDD1A': "\\mathfrak{W}"
  '\uD835\uDD1B': "\\mathfrak{X}"
  '\uD835\uDD1C': "\\mathfrak{Y}"
  '\uD835\uDD1E': "\\mathfrak{a}"
  '\uD835\uDD1F': "\\mathfrak{b}"
  '\uD835\uDD20': "\\mathfrak{c}"
  '\uD835\uDD21': "\\mathfrak{d}"
  '\uD835\uDD22': "\\mathfrak{e}"
  '\uD835\uDD23': "\\mathfrak{f}"
  '\uD835\uDD24': "\\mathfrak{g}"
  '\uD835\uDD25': "\\mathfrak{h}"
  '\uD835\uDD26': "\\mathfrak{i}"
  '\uD835\uDD27': "\\mathfrak{j}"
  '\uD835\uDD28': "\\mathfrak{k}"
  '\uD835\uDD29': "\\mathfrak{l}"
  '\uD835\uDD2A': "\\mathfrak{m}"
  '\uD835\uDD2B': "\\mathfrak{n}"
  '\uD835\uDD2C': "\\mathfrak{o}"
  '\uD835\uDD2D': "\\mathfrak{p}"
  '\uD835\uDD2E': "\\mathfrak{q}"
  '\uD835\uDD2F': "\\mathfrak{r}"
  '\uD835\uDD30': "\\mathfrak{s}"
  '\uD835\uDD31': "\\mathfrak{t}"
  '\uD835\uDD32': "\\mathfrak{u}"
  '\uD835\uDD33': "\\mathfrak{v}"
  '\uD835\uDD34': "\\mathfrak{w}"
  '\uD835\uDD35': "\\mathfrak{x}"
  '\uD835\uDD36': "\\mathfrak{y}"
  '\uD835\uDD37': "\\mathfrak{z}"
  '\uD835\uDD38': "\\mathbb{A}"
  '\uD835\uDD39': "\\mathbb{B}"
  '\uD835\uDD3B': "\\mathbb{D}"
  '\uD835\uDD3C': "\\mathbb{E}"
  '\uD835\uDD3D': "\\mathbb{F}"
  '\uD835\uDD3E': "\\mathbb{G}"
  '\uD835\uDD40': "\\mathbb{I}"
  '\uD835\uDD41': "\\mathbb{J}"
  '\uD835\uDD42': "\\mathbb{K}"
  '\uD835\uDD43': "\\mathbb{L}"
  '\uD835\uDD44': "\\mathbb{M}"
  '\uD835\uDD46': "\\mathbb{O}"
  '\uD835\uDD4A': "\\mathbb{S}"
  '\uD835\uDD4B': "\\mathbb{T}"
  '\uD835\uDD4C': "\\mathbb{U}"
  '\uD835\uDD4D': "\\mathbb{V}"
  '\uD835\uDD4E': "\\mathbb{W}"
  '\uD835\uDD4F': "\\mathbb{X}"
  '\uD835\uDD50': "\\mathbb{Y}"
  '\uD835\uDD52': "\\mathbb{a}"
  '\uD835\uDD53': "\\mathbb{b}"
  '\uD835\uDD54': "\\mathbb{c}"
  '\uD835\uDD55': "\\mathbb{d}"
  '\uD835\uDD56': "\\mathbb{e}"
  '\uD835\uDD57': "\\mathbb{f}"
  '\uD835\uDD58': "\\mathbb{g}"
  '\uD835\uDD59': "\\mathbb{h}"
  '\uD835\uDD5A': "\\mathbb{i}"
  '\uD835\uDD5B': "\\mathbb{j}"
  '\uD835\uDD5C': "\\mathbb{k}"
  '\uD835\uDD5D': "\\mathbb{l}"
  '\uD835\uDD5E': "\\mathbb{m}"
  '\uD835\uDD5F': "\\mathbb{n}"
  '\uD835\uDD60': "\\mathbb{o}"
  '\uD835\uDD61': "\\mathbb{p}"
  '\uD835\uDD62': "\\mathbb{q}"
  '\uD835\uDD63': "\\mathbb{r}"
  '\uD835\uDD64': "\\mathbb{s}"
  '\uD835\uDD65': "\\mathbb{t}"
  '\uD835\uDD66': "\\mathbb{u}"
  '\uD835\uDD67': "\\mathbb{v}"
  '\uD835\uDD68': "\\mathbb{w}"
  '\uD835\uDD69': "\\mathbb{x}"
  '\uD835\uDD6A': "\\mathbb{y}"
  '\uD835\uDD6B': "\\mathbb{z}"
  '\uD835\uDD6C': "\\mathslbb{A}"
  '\uD835\uDD6D': "\\mathslbb{B}"
  '\uD835\uDD6E': "\\mathslbb{C}"
  '\uD835\uDD6F': "\\mathslbb{D}"
  '\uD835\uDD70': "\\mathslbb{E}"
  '\uD835\uDD71': "\\mathslbb{F}"
  '\uD835\uDD72': "\\mathslbb{G}"
  '\uD835\uDD73': "\\mathslbb{H}"
  '\uD835\uDD74': "\\mathslbb{I}"
  '\uD835\uDD75': "\\mathslbb{J}"
  '\uD835\uDD76': "\\mathslbb{K}"
  '\uD835\uDD77': "\\mathslbb{L}"
  '\uD835\uDD78': "\\mathslbb{M}"
  '\uD835\uDD79': "\\mathslbb{N}"
  '\uD835\uDD7A': "\\mathslbb{O}"
  '\uD835\uDD7B': "\\mathslbb{P}"
  '\uD835\uDD7C': "\\mathslbb{Q}"
  '\uD835\uDD7D': "\\mathslbb{R}"
  '\uD835\uDD7E': "\\mathslbb{S}"
  '\uD835\uDD7F': "\\mathslbb{T}"
  '\uD835\uDD80': "\\mathslbb{U}"
  '\uD835\uDD81': "\\mathslbb{V}"
  '\uD835\uDD82': "\\mathslbb{W}"
  '\uD835\uDD83': "\\mathslbb{X}"
  '\uD835\uDD84': "\\mathslbb{Y}"
  '\uD835\uDD85': "\\mathslbb{Z}"
  '\uD835\uDD86': "\\mathslbb{a}"
  '\uD835\uDD87': "\\mathslbb{b}"
  '\uD835\uDD88': "\\mathslbb{c}"
  '\uD835\uDD89': "\\mathslbb{d}"
  '\uD835\uDD8A': "\\mathslbb{e}"
  '\uD835\uDD8B': "\\mathslbb{f}"
  '\uD835\uDD8C': "\\mathslbb{g}"
  '\uD835\uDD8D': "\\mathslbb{h}"
  '\uD835\uDD8E': "\\mathslbb{i}"
  '\uD835\uDD8F': "\\mathslbb{j}"
  '\uD835\uDD90': "\\mathslbb{k}"
  '\uD835\uDD91': "\\mathslbb{l}"
  '\uD835\uDD92': "\\mathslbb{m}"
  '\uD835\uDD93': "\\mathslbb{n}"
  '\uD835\uDD94': "\\mathslbb{o}"
  '\uD835\uDD95': "\\mathslbb{p}"
  '\uD835\uDD96': "\\mathslbb{q}"
  '\uD835\uDD97': "\\mathslbb{r}"
  '\uD835\uDD98': "\\mathslbb{s}"
  '\uD835\uDD99': "\\mathslbb{t}"
  '\uD835\uDD9A': "\\mathslbb{u}"
  '\uD835\uDD9B': "\\mathslbb{v}"
  '\uD835\uDD9C': "\\mathslbb{w}"
  '\uD835\uDD9D': "\\mathslbb{x}"
  '\uD835\uDD9E': "\\mathslbb{y}"
  '\uD835\uDD9F': "\\mathslbb{z}"
  '\uD835\uDDA0': "\\mathsf{A}"
  '\uD835\uDDA1': "\\mathsf{B}"
  '\uD835\uDDA2': "\\mathsf{C}"
  '\uD835\uDDA3': "\\mathsf{D}"
  '\uD835\uDDA4': "\\mathsf{E}"
  '\uD835\uDDA5': "\\mathsf{F}"
  '\uD835\uDDA6': "\\mathsf{G}"
  '\uD835\uDDA7': "\\mathsf{H}"
  '\uD835\uDDA8': "\\mathsf{I}"
  '\uD835\uDDA9': "\\mathsf{J}"
  '\uD835\uDDAA': "\\mathsf{K}"
  '\uD835\uDDAB': "\\mathsf{L}"
  '\uD835\uDDAC': "\\mathsf{M}"
  '\uD835\uDDAD': "\\mathsf{N}"
  '\uD835\uDDAE': "\\mathsf{O}"
  '\uD835\uDDAF': "\\mathsf{P}"
  '\uD835\uDDB0': "\\mathsf{Q}"
  '\uD835\uDDB1': "\\mathsf{R}"
  '\uD835\uDDB2': "\\mathsf{S}"
  '\uD835\uDDB3': "\\mathsf{T}"
  '\uD835\uDDB4': "\\mathsf{U}"
  '\uD835\uDDB5': "\\mathsf{V}"
  '\uD835\uDDB6': "\\mathsf{W}"
  '\uD835\uDDB7': "\\mathsf{X}"
  '\uD835\uDDB8': "\\mathsf{Y}"
  '\uD835\uDDB9': "\\mathsf{Z}"
  '\uD835\uDDBA': "\\mathsf{a}"
  '\uD835\uDDBB': "\\mathsf{b}"
  '\uD835\uDDBC': "\\mathsf{c}"
  '\uD835\uDDBD': "\\mathsf{d}"
  '\uD835\uDDBE': "\\mathsf{e}"
  '\uD835\uDDBF': "\\mathsf{f}"
  '\uD835\uDDC0': "\\mathsf{g}"
  '\uD835\uDDC1': "\\mathsf{h}"
  '\uD835\uDDC2': "\\mathsf{i}"
  '\uD835\uDDC3': "\\mathsf{j}"
  '\uD835\uDDC4': "\\mathsf{k}"
  '\uD835\uDDC5': "\\mathsf{l}"
  '\uD835\uDDC6': "\\mathsf{m}"
  '\uD835\uDDC7': "\\mathsf{n}"
  '\uD835\uDDC8': "\\mathsf{o}"
  '\uD835\uDDC9': "\\mathsf{p}"
  '\uD835\uDDCA': "\\mathsf{q}"
  '\uD835\uDDCB': "\\mathsf{r}"
  '\uD835\uDDCC': "\\mathsf{s}"
  '\uD835\uDDCD': "\\mathsf{t}"
  '\uD835\uDDCE': "\\mathsf{u}"
  '\uD835\uDDCF': "\\mathsf{v}"
  '\uD835\uDDD0': "\\mathsf{w}"
  '\uD835\uDDD1': "\\mathsf{x}"
  '\uD835\uDDD2': "\\mathsf{y}"
  '\uD835\uDDD3': "\\mathsf{z}"
  '\uD835\uDDD4': "\\mathsfbf{A}"
  '\uD835\uDDD5': "\\mathsfbf{B}"
  '\uD835\uDDD6': "\\mathsfbf{C}"
  '\uD835\uDDD7': "\\mathsfbf{D}"
  '\uD835\uDDD8': "\\mathsfbf{E}"
  '\uD835\uDDD9': "\\mathsfbf{F}"
  '\uD835\uDDDA': "\\mathsfbf{G}"
  '\uD835\uDDDB': "\\mathsfbf{H}"
  '\uD835\uDDDC': "\\mathsfbf{I}"
  '\uD835\uDDDD': "\\mathsfbf{J}"
  '\uD835\uDDDE': "\\mathsfbf{K}"
  '\uD835\uDDDF': "\\mathsfbf{L}"
  '\uD835\uDDE0': "\\mathsfbf{M}"
  '\uD835\uDDE1': "\\mathsfbf{N}"
  '\uD835\uDDE2': "\\mathsfbf{O}"
  '\uD835\uDDE3': "\\mathsfbf{P}"
  '\uD835\uDDE4': "\\mathsfbf{Q}"
  '\uD835\uDDE5': "\\mathsfbf{R}"
  '\uD835\uDDE6': "\\mathsfbf{S}"
  '\uD835\uDDE7': "\\mathsfbf{T}"
  '\uD835\uDDE8': "\\mathsfbf{U}"
  '\uD835\uDDE9': "\\mathsfbf{V}"
  '\uD835\uDDEA': "\\mathsfbf{W}"
  '\uD835\uDDEB': "\\mathsfbf{X}"
  '\uD835\uDDEC': "\\mathsfbf{Y}"
  '\uD835\uDDED': "\\mathsfbf{Z}"
  '\uD835\uDDEE': "\\mathsfbf{a}"
  '\uD835\uDDEF': "\\mathsfbf{b}"
  '\uD835\uDDF0': "\\mathsfbf{c}"
  '\uD835\uDDF1': "\\mathsfbf{d}"
  '\uD835\uDDF2': "\\mathsfbf{e}"
  '\uD835\uDDF3': "\\mathsfbf{f}"
  '\uD835\uDDF4': "\\mathsfbf{g}"
  '\uD835\uDDF5': "\\mathsfbf{h}"
  '\uD835\uDDF6': "\\mathsfbf{i}"
  '\uD835\uDDF7': "\\mathsfbf{j}"
  '\uD835\uDDF8': "\\mathsfbf{k}"
  '\uD835\uDDF9': "\\mathsfbf{l}"
  '\uD835\uDDFA': "\\mathsfbf{m}"
  '\uD835\uDDFB': "\\mathsfbf{n}"
  '\uD835\uDDFC': "\\mathsfbf{o}"
  '\uD835\uDDFD': "\\mathsfbf{p}"
  '\uD835\uDDFE': "\\mathsfbf{q}"
  '\uD835\uDDFF': "\\mathsfbf{r}"
  '\uD835\uDE00': "\\mathsfbf{s}"
  '\uD835\uDE01': "\\mathsfbf{t}"
  '\uD835\uDE02': "\\mathsfbf{u}"
  '\uD835\uDE03': "\\mathsfbf{v}"
  '\uD835\uDE04': "\\mathsfbf{w}"
  '\uD835\uDE05': "\\mathsfbf{x}"
  '\uD835\uDE06': "\\mathsfbf{y}"
  '\uD835\uDE07': "\\mathsfbf{z}"
  '\uD835\uDE08': "\\mathsfsl{A}"
  '\uD835\uDE09': "\\mathsfsl{B}"
  '\uD835\uDE0A': "\\mathsfsl{C}"
  '\uD835\uDE0B': "\\mathsfsl{D}"
  '\uD835\uDE0C': "\\mathsfsl{E}"
  '\uD835\uDE0D': "\\mathsfsl{F}"
  '\uD835\uDE0E': "\\mathsfsl{G}"
  '\uD835\uDE0F': "\\mathsfsl{H}"
  '\uD835\uDE10': "\\mathsfsl{I}"
  '\uD835\uDE11': "\\mathsfsl{J}"
  '\uD835\uDE12': "\\mathsfsl{K}"
  '\uD835\uDE13': "\\mathsfsl{L}"
  '\uD835\uDE14': "\\mathsfsl{M}"
  '\uD835\uDE15': "\\mathsfsl{N}"
  '\uD835\uDE16': "\\mathsfsl{O}"
  '\uD835\uDE17': "\\mathsfsl{P}"
  '\uD835\uDE18': "\\mathsfsl{Q}"
  '\uD835\uDE19': "\\mathsfsl{R}"
  '\uD835\uDE1A': "\\mathsfsl{S}"
  '\uD835\uDE1B': "\\mathsfsl{T}"
  '\uD835\uDE1C': "\\mathsfsl{U}"
  '\uD835\uDE1D': "\\mathsfsl{V}"
  '\uD835\uDE1E': "\\mathsfsl{W}"
  '\uD835\uDE1F': "\\mathsfsl{X}"
  '\uD835\uDE20': "\\mathsfsl{Y}"
  '\uD835\uDE21': "\\mathsfsl{Z}"
  '\uD835\uDE22': "\\mathsfsl{a}"
  '\uD835\uDE23': "\\mathsfsl{b}"
  '\uD835\uDE24': "\\mathsfsl{c}"
  '\uD835\uDE25': "\\mathsfsl{d}"
  '\uD835\uDE26': "\\mathsfsl{e}"
  '\uD835\uDE27': "\\mathsfsl{f}"
  '\uD835\uDE28': "\\mathsfsl{g}"
  '\uD835\uDE29': "\\mathsfsl{h}"
  '\uD835\uDE2A': "\\mathsfsl{i}"
  '\uD835\uDE2B': "\\mathsfsl{j}"
  '\uD835\uDE2C': "\\mathsfsl{k}"
  '\uD835\uDE2D': "\\mathsfsl{l}"
  '\uD835\uDE2E': "\\mathsfsl{m}"
  '\uD835\uDE2F': "\\mathsfsl{n}"
  '\uD835\uDE30': "\\mathsfsl{o}"
  '\uD835\uDE31': "\\mathsfsl{p}"
  '\uD835\uDE32': "\\mathsfsl{q}"
  '\uD835\uDE33': "\\mathsfsl{r}"
  '\uD835\uDE34': "\\mathsfsl{s}"
  '\uD835\uDE35': "\\mathsfsl{t}"
  '\uD835\uDE36': "\\mathsfsl{u}"
  '\uD835\uDE37': "\\mathsfsl{v}"
  '\uD835\uDE38': "\\mathsfsl{w}"
  '\uD835\uDE39': "\\mathsfsl{x}"
  '\uD835\uDE3A': "\\mathsfsl{y}"
  '\uD835\uDE3B': "\\mathsfsl{z}"
  '\uD835\uDE3C': "\\mathsfbfsl{A}"
  '\uD835\uDE3D': "\\mathsfbfsl{B}"
  '\uD835\uDE3E': "\\mathsfbfsl{C}"
  '\uD835\uDE3F': "\\mathsfbfsl{D}"
  '\uD835\uDE40': "\\mathsfbfsl{E}"
  '\uD835\uDE41': "\\mathsfbfsl{F}"
  '\uD835\uDE42': "\\mathsfbfsl{G}"
  '\uD835\uDE43': "\\mathsfbfsl{H}"
  '\uD835\uDE44': "\\mathsfbfsl{I}"
  '\uD835\uDE45': "\\mathsfbfsl{J}"
  '\uD835\uDE46': "\\mathsfbfsl{K}"
  '\uD835\uDE47': "\\mathsfbfsl{L}"
  '\uD835\uDE48': "\\mathsfbfsl{M}"
  '\uD835\uDE49': "\\mathsfbfsl{N}"
  '\uD835\uDE4A': "\\mathsfbfsl{O}"
  '\uD835\uDE4B': "\\mathsfbfsl{P}"
  '\uD835\uDE4C': "\\mathsfbfsl{Q}"
  '\uD835\uDE4D': "\\mathsfbfsl{R}"
  '\uD835\uDE4E': "\\mathsfbfsl{S}"
  '\uD835\uDE4F': "\\mathsfbfsl{T}"
  '\uD835\uDE50': "\\mathsfbfsl{U}"
  '\uD835\uDE51': "\\mathsfbfsl{V}"
  '\uD835\uDE52': "\\mathsfbfsl{W}"
  '\uD835\uDE53': "\\mathsfbfsl{X}"
  '\uD835\uDE54': "\\mathsfbfsl{Y}"
  '\uD835\uDE55': "\\mathsfbfsl{Z}"
  '\uD835\uDE56': "\\mathsfbfsl{a}"
  '\uD835\uDE57': "\\mathsfbfsl{b}"
  '\uD835\uDE58': "\\mathsfbfsl{c}"
  '\uD835\uDE59': "\\mathsfbfsl{d}"
  '\uD835\uDE5A': "\\mathsfbfsl{e}"
  '\uD835\uDE5B': "\\mathsfbfsl{f}"
  '\uD835\uDE5C': "\\mathsfbfsl{g}"
  '\uD835\uDE5D': "\\mathsfbfsl{h}"
  '\uD835\uDE5E': "\\mathsfbfsl{i}"
  '\uD835\uDE5F': "\\mathsfbfsl{j}"
  '\uD835\uDE60': "\\mathsfbfsl{k}"
  '\uD835\uDE61': "\\mathsfbfsl{l}"
  '\uD835\uDE62': "\\mathsfbfsl{m}"
  '\uD835\uDE63': "\\mathsfbfsl{n}"
  '\uD835\uDE64': "\\mathsfbfsl{o}"
  '\uD835\uDE65': "\\mathsfbfsl{p}"
  '\uD835\uDE66': "\\mathsfbfsl{q}"
  '\uD835\uDE67': "\\mathsfbfsl{r}"
  '\uD835\uDE68': "\\mathsfbfsl{s}"
  '\uD835\uDE69': "\\mathsfbfsl{t}"
  '\uD835\uDE6A': "\\mathsfbfsl{u}"
  '\uD835\uDE6B': "\\mathsfbfsl{v}"
  '\uD835\uDE6C': "\\mathsfbfsl{w}"
  '\uD835\uDE6D': "\\mathsfbfsl{x}"
  '\uD835\uDE6E': "\\mathsfbfsl{y}"
  '\uD835\uDE6F': "\\mathsfbfsl{z}"
  '\uD835\uDE70': "\\mathtt{A}"
  '\uD835\uDE71': "\\mathtt{B}"
  '\uD835\uDE72': "\\mathtt{C}"
  '\uD835\uDE73': "\\mathtt{D}"
  '\uD835\uDE74': "\\mathtt{E}"
  '\uD835\uDE75': "\\mathtt{F}"
  '\uD835\uDE76': "\\mathtt{G}"
  '\uD835\uDE77': "\\mathtt{H}"
  '\uD835\uDE78': "\\mathtt{I}"
  '\uD835\uDE79': "\\mathtt{J}"
  '\uD835\uDE7A': "\\mathtt{K}"
  '\uD835\uDE7B': "\\mathtt{L}"
  '\uD835\uDE7C': "\\mathtt{M}"
  '\uD835\uDE7D': "\\mathtt{N}"
  '\uD835\uDE7E': "\\mathtt{O}"
  '\uD835\uDE7F': "\\mathtt{P}"
  '\uD835\uDE80': "\\mathtt{Q}"
  '\uD835\uDE81': "\\mathtt{R}"
  '\uD835\uDE82': "\\mathtt{S}"
  '\uD835\uDE83': "\\mathtt{T}"
  '\uD835\uDE84': "\\mathtt{U}"
  '\uD835\uDE85': "\\mathtt{V}"
  '\uD835\uDE86': "\\mathtt{W}"
  '\uD835\uDE87': "\\mathtt{X}"
  '\uD835\uDE88': "\\mathtt{Y}"
  '\uD835\uDE89': "\\mathtt{Z}"
  '\uD835\uDE8A': "\\mathtt{a}"
  '\uD835\uDE8B': "\\mathtt{b}"
  '\uD835\uDE8C': "\\mathtt{c}"
  '\uD835\uDE8D': "\\mathtt{d}"
  '\uD835\uDE8E': "\\mathtt{e}"
  '\uD835\uDE8F': "\\mathtt{f}"
  '\uD835\uDE90': "\\mathtt{g}"
  '\uD835\uDE91': "\\mathtt{h}"
  '\uD835\uDE92': "\\mathtt{i}"
  '\uD835\uDE93': "\\mathtt{j}"
  '\uD835\uDE94': "\\mathtt{k}"
  '\uD835\uDE95': "\\mathtt{l}"
  '\uD835\uDE96': "\\mathtt{m}"
  '\uD835\uDE97': "\\mathtt{n}"
  '\uD835\uDE98': "\\mathtt{o}"
  '\uD835\uDE99': "\\mathtt{p}"
  '\uD835\uDE9A': "\\mathtt{q}"
  '\uD835\uDE9B': "\\mathtt{r}"
  '\uD835\uDE9C': "\\mathtt{s}"
  '\uD835\uDE9D': "\\mathtt{t}"
  '\uD835\uDE9E': "\\mathtt{u}"
  '\uD835\uDE9F': "\\mathtt{v}"
  '\uD835\uDEA0': "\\mathtt{w}"
  '\uD835\uDEA1': "\\mathtt{x}"
  '\uD835\uDEA2': "\\mathtt{y}"
  '\uD835\uDEA3': "\\mathtt{z}"
  '\uD835\uDEA8': "\\mathbf{\\Alpha}"
  '\uD835\uDEA9': "\\mathbf{\\Beta}"
  '\uD835\uDEAA': "\\mathbf{\\Gamma}"
  '\uD835\uDEAB': "\\mathbf{\\Delta}"
  '\uD835\uDEAC': "\\mathbf{\\Epsilon}"
  '\uD835\uDEAD': "\\mathbf{\\Zeta}"
  '\uD835\uDEAE': "\\mathbf{\\Eta}"
  '\uD835\uDEAF': "\\mathbf{\\Theta}"
  '\uD835\uDEB0': "\\mathbf{\\Iota}"
  '\uD835\uDEB1': "\\mathbf{\\Kappa}"
  '\uD835\uDEB2': "\\mathbf{\\Lambda}"
  '\uD835\uDEB3': "M"
  '\uD835\uDEB4': "N"
  '\uD835\uDEB5': "\\mathbf{\\Xi}"
  '\uD835\uDEB6': "O"
  '\uD835\uDEB7': "\\mathbf{\\Pi}"
  '\uD835\uDEB8': "\\mathbf{\\Rho}"
  '\uD835\uDEBA': "\\mathbf{\\Sigma}"
  '\uD835\uDEBB': "\\mathbf{\\Tau}"
  '\uD835\uDEBC': "\\mathbf{\\Upsilon}"
  '\uD835\uDEBD': "\\mathbf{\\Phi}"
  '\uD835\uDEBE': "\\mathbf{\\Chi}"
  '\uD835\uDEBF': "\\mathbf{\\Psi}"
  '\uD835\uDEC0': "\\mathbf{\\Omega}"
  '\uD835\uDEC1': "\\mathbf{\\nabla}"
  '\uD835\uDEC2': "\\mathbf{\\Alpha}"
  '\uD835\uDEC3': "\\mathbf{\\Beta}"
  '\uD835\uDEC4': "\\mathbf{\\Gamma}"
  '\uD835\uDEC5': "\\mathbf{\\Delta}"
  '\uD835\uDEC6': "\\mathbf{\\Epsilon}"
  '\uD835\uDEC7': "\\mathbf{\\Zeta}"
  '\uD835\uDEC8': "\\mathbf{\\Eta}"
  '\uD835\uDEC9': "\\mathbf{\\theta}"
  '\uD835\uDECA': "\\mathbf{\\Iota}"
  '\uD835\uDECB': "\\mathbf{\\Kappa}"
  '\uD835\uDECC': "\\mathbf{\\Lambda}"
  '\uD835\uDECD': "M"
  '\uD835\uDECE': "N"
  '\uD835\uDECF': "\\mathbf{\\Xi}"
  '\uD835\uDED0': "O"
  '\uD835\uDED1': "\\mathbf{\\Pi}"
  '\uD835\uDED2': "\\mathbf{\\Rho}"
  '\uD835\uDED3': "\\mathbf{\\varsigma}"
  '\uD835\uDED4': "\\mathbf{\\Sigma}"
  '\uD835\uDED5': "\\mathbf{\\Tau}"
  '\uD835\uDED6': "\\mathbf{\\Upsilon}"
  '\uD835\uDED7': "\\mathbf{\\Phi}"
  '\uD835\uDED8': "\\mathbf{\\Chi}"
  '\uD835\uDED9': "\\mathbf{\\Psi}"
  '\uD835\uDEDA': "\\mathbf{\\Omega}"
  '\uD835\uDEDB': "{\\partial}"
  '\uD835\uDEDC': "\\in"
  '\uD835\uDEE2': "\\mathsl{\\Alpha}"
  '\uD835\uDEE3': "\\mathsl{\\Beta}"
  '\uD835\uDEE4': "\\mathsl{\\Gamma}"
  '\uD835\uDEE5': "\\mathsl{\\Delta}"
  '\uD835\uDEE6': "\\mathsl{\\Epsilon}"
  '\uD835\uDEE7': "\\mathsl{\\Zeta}"
  '\uD835\uDEE8': "\\mathsl{\\Eta}"
  '\uD835\uDEE9': "\\mathsl{\\Theta}"
  '\uD835\uDEEA': "\\mathsl{\\Iota}"
  '\uD835\uDEEB': "\\mathsl{\\Kappa}"
  '\uD835\uDEEC': "\\mathsl{\\Lambda}"
  '\uD835\uDEED': "M"
  '\uD835\uDEEE': "N"
  '\uD835\uDEEF': "\\mathsl{\\Xi}"
  '\uD835\uDEF0': "O"
  '\uD835\uDEF1': "\\mathsl{\\Pi}"
  '\uD835\uDEF2': "\\mathsl{\\Rho}"
  '\uD835\uDEF4': "\\mathsl{\\Sigma}"
  '\uD835\uDEF5': "\\mathsl{\\Tau}"
  '\uD835\uDEF6': "\\mathsl{\\Upsilon}"
  '\uD835\uDEF7': "\\mathsl{\\Phi}"
  '\uD835\uDEF8': "\\mathsl{\\Chi}"
  '\uD835\uDEF9': "\\mathsl{\\Psi}"
  '\uD835\uDEFA': "\\mathsl{\\Omega}"
  '\uD835\uDEFB': "\\mathsl{\\nabla}"
  '\uD835\uDEFC': "\\mathsl{\\Alpha}"
  '\uD835\uDEFD': "\\mathsl{\\Beta}"
  '\uD835\uDEFE': "\\mathsl{\\Gamma}"
  '\uD835\uDEFF': "\\mathsl{\\Delta}"
  '\uD835\uDF00': "\\mathsl{\\Epsilon}"
  '\uD835\uDF01': "\\mathsl{\\Zeta}"
  '\uD835\uDF02': "\\mathsl{\\Eta}"
  '\uD835\uDF03': "\\mathsl{\\Theta}"
  '\uD835\uDF04': "\\mathsl{\\Iota}"
  '\uD835\uDF05': "\\mathsl{\\Kappa}"
  '\uD835\uDF06': "\\mathsl{\\Lambda}"
  '\uD835\uDF07': "M"
  '\uD835\uDF08': "N"
  '\uD835\uDF09': "\\mathsl{\\Xi}"
  '\uD835\uDF0A': "O"
  '\uD835\uDF0B': "\\mathsl{\\Pi}"
  '\uD835\uDF0C': "\\mathsl{\\Rho}"
  '\uD835\uDF0D': "\\mathsl{\\varsigma}"
  '\uD835\uDF0E': "\\mathsl{\\Sigma}"
  '\uD835\uDF0F': "\\mathsl{\\Tau}"
  '\uD835\uDF10': "\\mathsl{\\Upsilon}"
  '\uD835\uDF11': "\\mathsl{\\Phi}"
  '\uD835\uDF12': "\\mathsl{\\Chi}"
  '\uD835\uDF13': "\\mathsl{\\Psi}"
  '\uD835\uDF14': "\\mathsl{\\Omega}"
  '\uD835\uDF15': "{\\partial}"
  '\uD835\uDF16': "\\in"
  '\uD835\uDF1C': "\\mathbit{\\Alpha}"
  '\uD835\uDF1D': "\\mathbit{\\Beta}"
  '\uD835\uDF1E': "\\mathbit{\\Gamma}"
  '\uD835\uDF1F': "\\mathbit{\\Delta}"
  '\uD835\uDF20': "\\mathbit{\\Epsilon}"
  '\uD835\uDF21': "\\mathbit{\\Zeta}"
  '\uD835\uDF22': "\\mathbit{\\Eta}"
  '\uD835\uDF23': "\\mathbit{\\Theta}"
  '\uD835\uDF24': "\\mathbit{\\Iota}"
  '\uD835\uDF25': "\\mathbit{\\Kappa}"
  '\uD835\uDF26': "\\mathbit{\\Lambda}"
  '\uD835\uDF27': "M"
  '\uD835\uDF28': "N"
  '\uD835\uDF29': "\\mathbit{\\Xi}"
  '\uD835\uDF2A': "O"
  '\uD835\uDF2B': "\\mathbit{\\Pi}"
  '\uD835\uDF2C': "\\mathbit{\\Rho}"
  '\uD835\uDF2E': "\\mathbit{\\Sigma}"
  '\uD835\uDF2F': "\\mathbit{\\Tau}"
  '\uD835\uDF30': "\\mathbit{\\Upsilon}"
  '\uD835\uDF31': "\\mathbit{\\Phi}"
  '\uD835\uDF32': "\\mathbit{\\Chi}"
  '\uD835\uDF33': "\\mathbit{\\Psi}"
  '\uD835\uDF34': "\\mathbit{\\Omega}"
  '\uD835\uDF35': "\\mathbit{\\nabla}"
  '\uD835\uDF36': "\\mathbit{\\Alpha}"
  '\uD835\uDF37': "\\mathbit{\\Beta}"
  '\uD835\uDF38': "\\mathbit{\\Gamma}"
  '\uD835\uDF39': "\\mathbit{\\Delta}"
  '\uD835\uDF3A': "\\mathbit{\\Epsilon}"
  '\uD835\uDF3B': "\\mathbit{\\Zeta}"
  '\uD835\uDF3C': "\\mathbit{\\Eta}"
  '\uD835\uDF3D': "\\mathbit{\\Theta}"
  '\uD835\uDF3E': "\\mathbit{\\Iota}"
  '\uD835\uDF3F': "\\mathbit{\\Kappa}"
  '\uD835\uDF40': "\\mathbit{\\Lambda}"
  '\uD835\uDF41': "M"
  '\uD835\uDF42': "N"
  '\uD835\uDF43': "\\mathbit{\\Xi}"
  '\uD835\uDF44': "O"
  '\uD835\uDF45': "\\mathbit{\\Pi}"
  '\uD835\uDF46': "\\mathbit{\\Rho}"
  '\uD835\uDF47': "\\mathbit{\\varsigma}"
  '\uD835\uDF48': "\\mathbit{\\Sigma}"
  '\uD835\uDF49': "\\mathbit{\\Tau}"
  '\uD835\uDF4A': "\\mathbit{\\Upsilon}"
  '\uD835\uDF4B': "\\mathbit{\\Phi}"
  '\uD835\uDF4C': "\\mathbit{\\Chi}"
  '\uD835\uDF4D': "\\mathbit{\\Psi}"
  '\uD835\uDF4E': "\\mathbit{\\Omega}"
  '\uD835\uDF4F': "{\\partial}"
  '\uD835\uDF50': "\\in"
  '\uD835\uDF56': "\\mathsfbf{\\Alpha}"
  '\uD835\uDF57': "\\mathsfbf{\\Beta}"
  '\uD835\uDF58': "\\mathsfbf{\\Gamma}"
  '\uD835\uDF59': "\\mathsfbf{\\Delta}"
  '\uD835\uDF5A': "\\mathsfbf{\\Epsilon}"
  '\uD835\uDF5B': "\\mathsfbf{\\Zeta}"
  '\uD835\uDF5C': "\\mathsfbf{\\Eta}"
  '\uD835\uDF5D': "\\mathsfbf{\\Theta}"
  '\uD835\uDF5E': "\\mathsfbf{\\Iota}"
  '\uD835\uDF5F': "\\mathsfbf{\\Kappa}"
  '\uD835\uDF60': "\\mathsfbf{\\Lambda}"
  '\uD835\uDF61': "M"
  '\uD835\uDF62': "N"
  '\uD835\uDF63': "\\mathsfbf{\\Xi}"
  '\uD835\uDF64': "O"
  '\uD835\uDF65': "\\mathsfbf{\\Pi}"
  '\uD835\uDF66': "\\mathsfbf{\\Rho}"
  '\uD835\uDF68': "\\mathsfbf{\\Sigma}"
  '\uD835\uDF69': "\\mathsfbf{\\Tau}"
  '\uD835\uDF6A': "\\mathsfbf{\\Upsilon}"
  '\uD835\uDF6B': "\\mathsfbf{\\Phi}"
  '\uD835\uDF6C': "\\mathsfbf{\\Chi}"
  '\uD835\uDF6D': "\\mathsfbf{\\Psi}"
  '\uD835\uDF6E': "\\mathsfbf{\\Omega}"
  '\uD835\uDF6F': "\\mathsfbf{\\nabla}"
  '\uD835\uDF70': "\\mathsfbf{\\Alpha}"
  '\uD835\uDF71': "\\mathsfbf{\\Beta}"
  '\uD835\uDF72': "\\mathsfbf{\\Gamma}"
  '\uD835\uDF73': "\\mathsfbf{\\Delta}"
  '\uD835\uDF74': "\\mathsfbf{\\Epsilon}"
  '\uD835\uDF75': "\\mathsfbf{\\Zeta}"
  '\uD835\uDF76': "\\mathsfbf{\\Eta}"
  '\uD835\uDF77': "\\mathsfbf{\\Theta}"
  '\uD835\uDF78': "\\mathsfbf{\\Iota}"
  '\uD835\uDF79': "\\mathsfbf{\\Kappa}"
  '\uD835\uDF7A': "\\mathsfbf{\\Lambda}"
  '\uD835\uDF7B': "M"
  '\uD835\uDF7C': "N"
  '\uD835\uDF7D': "\\mathsfbf{\\Xi}"
  '\uD835\uDF7E': "O"
  '\uD835\uDF7F': "\\mathsfbf{\\Pi}"
  '\uD835\uDF80': "\\mathsfbf{\\Rho}"
  '\uD835\uDF81': "\\mathsfbf{\\varsigma}"
  '\uD835\uDF82': "\\mathsfbf{\\Sigma}"
  '\uD835\uDF83': "\\mathsfbf{\\Tau}"
  '\uD835\uDF84': "\\mathsfbf{\\Upsilon}"
  '\uD835\uDF85': "\\mathsfbf{\\Phi}"
  '\uD835\uDF86': "\\mathsfbf{\\Chi}"
  '\uD835\uDF87': "\\mathsfbf{\\Psi}"
  '\uD835\uDF88': "\\mathsfbf{\\Omega}"
  '\uD835\uDF89': "{\\partial}"
  '\uD835\uDF8A': "\\in"
  '\uD835\uDF90': "\\mathsfbfsl{\\Alpha}"
  '\uD835\uDF91': "\\mathsfbfsl{\\Beta}"
  '\uD835\uDF92': "\\mathsfbfsl{\\Gamma}"
  '\uD835\uDF93': "\\mathsfbfsl{\\Delta}"
  '\uD835\uDF94': "\\mathsfbfsl{\\Epsilon}"
  '\uD835\uDF95': "\\mathsfbfsl{\\Zeta}"
  '\uD835\uDF96': "\\mathsfbfsl{\\Eta}"
  '\uD835\uDF97': "\\mathsfbfsl{\\vartheta}"
  '\uD835\uDF98': "\\mathsfbfsl{\\Iota}"
  '\uD835\uDF99': "\\mathsfbfsl{\\Kappa}"
  '\uD835\uDF9A': "\\mathsfbfsl{\\Lambda}"
  '\uD835\uDF9B': "M"
  '\uD835\uDF9C': "N"
  '\uD835\uDF9D': "\\mathsfbfsl{\\Xi}"
  '\uD835\uDF9E': "O"
  '\uD835\uDF9F': "\\mathsfbfsl{\\Pi}"
  '\uD835\uDFA0': "\\mathsfbfsl{\\Rho}"
  '\uD835\uDFA2': "\\mathsfbfsl{\\Sigma}"
  '\uD835\uDFA3': "\\mathsfbfsl{\\Tau}"
  '\uD835\uDFA4': "\\mathsfbfsl{\\Upsilon}"
  '\uD835\uDFA5': "\\mathsfbfsl{\\Phi}"
  '\uD835\uDFA6': "\\mathsfbfsl{\\Chi}"
  '\uD835\uDFA7': "\\mathsfbfsl{\\Psi}"
  '\uD835\uDFA8': "\\mathsfbfsl{\\Omega}"
  '\uD835\uDFA9': "\\mathsfbfsl{\\nabla}"
  '\uD835\uDFAA': "\\mathsfbfsl{\\Alpha}"
  '\uD835\uDFAB': "\\mathsfbfsl{\\Beta}"
  '\uD835\uDFAC': "\\mathsfbfsl{\\Gamma}"
  '\uD835\uDFAD': "\\mathsfbfsl{\\Delta}"
  '\uD835\uDFAE': "\\mathsfbfsl{\\Epsilon}"
  '\uD835\uDFAF': "\\mathsfbfsl{\\Zeta}"
  '\uD835\uDFB0': "\\mathsfbfsl{\\Eta}"
  '\uD835\uDFB1': "\\mathsfbfsl{\\vartheta}"
  '\uD835\uDFB2': "\\mathsfbfsl{\\Iota}"
  '\uD835\uDFB3': "\\mathsfbfsl{\\Kappa}"
  '\uD835\uDFB4': "\\mathsfbfsl{\\Lambda}"
  '\uD835\uDFB5': "M"
  '\uD835\uDFB6': "N"
  '\uD835\uDFB7': "\\mathsfbfsl{\\Xi}"
  '\uD835\uDFB8': "O"
  '\uD835\uDFB9': "\\mathsfbfsl{\\Pi}"
  '\uD835\uDFBA': "\\mathsfbfsl{\\Rho}"
  '\uD835\uDFBB': "\\mathsfbfsl{\\varsigma}"
  '\uD835\uDFBC': "\\mathsfbfsl{\\Sigma}"
  '\uD835\uDFBD': "\\mathsfbfsl{\\Tau}"
  '\uD835\uDFBE': "\\mathsfbfsl{\\Upsilon}"
  '\uD835\uDFBF': "\\mathsfbfsl{\\Phi}"
  '\uD835\uDFC0': "\\mathsfbfsl{\\Chi}"
  '\uD835\uDFC1': "\\mathsfbfsl{\\Psi}"
  '\uD835\uDFC2': "\\mathsfbfsl{\\Omega}"
  '\uD835\uDFC3': "{\\partial}"
  '\uD835\uDFC4': "\\in"
  '\uD835\uDFCE': "\\mathbf{0}"
  '\uD835\uDFCF': "\\mathbf{1}"
  '\uD835\uDFD0': "\\mathbf{2}"
  '\uD835\uDFD1': "\\mathbf{3}"
  '\uD835\uDFD2': "\\mathbf{4}"
  '\uD835\uDFD3': "\\mathbf{5}"
  '\uD835\uDFD4': "\\mathbf{6}"
  '\uD835\uDFD5': "\\mathbf{7}"
  '\uD835\uDFD6': "\\mathbf{8}"
  '\uD835\uDFD7': "\\mathbf{9}"
  '\uD835\uDFD8': "\\mathbb{0}"
  '\uD835\uDFD9': "\\mathbb{1}"
  '\uD835\uDFDA': "\\mathbb{2}"
  '\uD835\uDFDB': "\\mathbb{3}"
  '\uD835\uDFDC': "\\mathbb{4}"
  '\uD835\uDFDD': "\\mathbb{5}"
  '\uD835\uDFDE': "\\mathbb{6}"
  '\uD835\uDFDF': "\\mathbb{7}"
  '\uD835\uDFE0': "\\mathbb{8}"
  '\uD835\uDFE1': "\\mathbb{9}"
  '\uD835\uDFE2': "\\mathsf{0}"
  '\uD835\uDFE3': "\\mathsf{1}"
  '\uD835\uDFE4': "\\mathsf{2}"
  '\uD835\uDFE5': "\\mathsf{3}"
  '\uD835\uDFE6': "\\mathsf{4}"
  '\uD835\uDFE7': "\\mathsf{5}"
  '\uD835\uDFE8': "\\mathsf{6}"
  '\uD835\uDFE9': "\\mathsf{7}"
  '\uD835\uDFEA': "\\mathsf{8}"
  '\uD835\uDFEB': "\\mathsf{9}"
  '\uD835\uDFEC': "\\mathsfbf{0}"
  '\uD835\uDFED': "\\mathsfbf{1}"
  '\uD835\uDFEE': "\\mathsfbf{2}"
  '\uD835\uDFEF': "\\mathsfbf{3}"
  '\uD835\uDFF0': "\\mathsfbf{4}"
  '\uD835\uDFF1': "\\mathsfbf{5}"
  '\uD835\uDFF2': "\\mathsfbf{6}"
  '\uD835\uDFF3': "\\mathsfbf{7}"
  '\uD835\uDFF4': "\\mathsfbf{8}"
  '\uD835\uDFF5': "\\mathsfbf{9}"
  '\uD835\uDFF6': "\\mathtt{0}"
  '\uD835\uDFF7': "\\mathtt{1}"
  '\uD835\uDFF8': "\\mathtt{2}"
  '\uD835\uDFF9': "\\mathtt{3}"
  '\uD835\uDFFA': "\\mathtt{4}"
  '\uD835\uDFFB': "\\mathtt{5}"
  '\uD835\uDFFC': "\\mathtt{6}"
  '\uD835\uDFFD': "\\mathtt{7}"
  '\uD835\uDFFE': "\\mathtt{8}"
  '\uD835\uDFFF': "\\mathtt{9}"
LaTeX.toLaTeX.ascii.text =
  '#': "\\#"
  '$': "{\\textdollar}"
  '%': "\\%"
  '&': "\\&"
  '[': "{[}"
  '^': "\\^{}"
  '_': "\\_"
  '{': "\\{"
  '}': "\\}"
  '~': "{\\textasciitilde}"
  '\u00A0': " "
  '\u00A1': "{\\textexclamdown}"
  '\u00A2': "{\\textcent}"
  '\u00A3': "{\\textsterling}"
  '\u00A4': "{\\textcurrency}"
  '\u00A5': "{\\textyen}"
  '\u00A6': "{\\textbrokenbar}"
  '\u00A7': "{\\textsection}"
  '\u00A8': "{\\textasciidieresis}"
  '\u00A9': "{\\textcopyright}"
  '\u00AA': "{\\textordfeminine}"
  '\u00AB': "{\\guillemotleft}"
  '\u00AE': "{\\textregistered}"
  '\u00AF': "{\\textasciimacron}"
  '\u00B0': "{\\textdegree}"
  '\u00B4': "{\\textasciiacute}"
  '\u00B6': "{\\textparagraph}"
  '\u00B8': "\\c{}"
  '\u00BA': "{\\textordmasculine}"
  '\u00BB': "{\\guillemotright}"
  '\u00BC': "{\\textonequarter}"
  '\u00BD': "{\\textonehalf}"
  '\u00BE': "{\\textthreequarters}"
  '\u00BF': "{\\textquestiondown}"
  '\u00C0': "{\\`A}"
  '\u00C1': "{\\'A}"
  '\u00C2': "{\\^A}"
  '\u00C3': "{\\~A}"
  '\u00C4': "{\\\"A}"
  '\u00C5': "{\\AA}"
  '\u00C6': "{\\AE}"
  '\u00C7': "{\\c C}"
  '\u00C8': "{\\`E}"
  '\u00C9': "{\\'E}"
  '\u00CA': "{\\^E}"
  '\u00CB': "{\\\"E}"
  '\u00CC': "{\\`I}"
  '\u00CD': "{\\'I}"
  '\u00CE': "{\\^I}"
  '\u00CF': "{\\\"I}"
  '\u00D0': "{\\DH}"
  '\u00D1': "{\\~N}"
  '\u00D2': "{\\`O}"
  '\u00D3': "{\\'O}"
  '\u00D4': "{\\^O}"
  '\u00D5': "{\\~O}"
  '\u00D6': "{\\\"O}"
  '\u00D7': "{\\texttimes}"
  '\u00D8': "{\\O}"
  '\u00D9': "{\\`U}"
  '\u00DA': "{\\'U}"
  '\u00DB': "{\\^U}"
  '\u00DC': "{\\\"U}"
  '\u00DD': "{\\'Y}"
  '\u00DE': "{\\TH}"
  '\u00DF': "{\\ss}"
  '\u00E0': "{\\`a}"
  '\u00E1': "{\\'a}"
  '\u00E2': "{\\^a}"
  '\u00E3': "{\\~a}"
  '\u00E4': "{\\\"a}"
  '\u00E5': "{\\aa}"
  '\u00E6': "{\\ae}"
  '\u00E7': "{\\c c}"
  '\u00E8': "{\\`e}"
  '\u00E9': "{\\'e}"
  '\u00EA': "{\\^e}"
  '\u00EB': "{\\\"e}"
  '\u00EC': "{\\`\\i}"
  '\u00ED': "{\\'\\i}"
  '\u00EE': "{\\^\\i}"
  '\u00EF': "{\\\"\\i}"
  '\u00F0': "{\\dh}"
  '\u00F1': "{\\~n}"
  '\u00F2': "{\\`o}"
  '\u00F3': "{\\'o}"
  '\u00F4': "{\\^o}"
  '\u00F5': "{\\~o}"
  '\u00F6': "{\\\"o}"
  '\u00F8': "{\\o}"
  '\u00F9': "{\\`u}"
  '\u00FA': "{\\'u}"
  '\u00FB': "{\\^u}"
  '\u00FC': "{\\\"u}"
  '\u00FD': "{\\'y}"
  '\u00FE': "{\\th}"
  '\u00FF': "{\\\"y}"
  '\u0100': "\\={A}"
  '\u0101': "\\={a}"
  '\u0102': "{\\u A}"
  '\u0103': "{\\u a}"
  '\u0104': "\\k{A}"
  '\u0105': "\\k{a}"
  '\u0106': "{\\'C}"
  '\u0107': "{\\'c}"
  '\u0108': "{\\^C}"
  '\u0109': "{\\^c}"
  '\u010A': "{\\.C}"
  '\u010B': "{\\.c}"
  '\u010C': "{\\v C}"
  '\u010D': "{\\v c}"
  '\u010E': "{\\v D}"
  '\u010F': "{\\v d}"
  '\u0110': "{\\DJ}"
  '\u0111': "{\\dj}"
  '\u0112': "\\={E}"
  '\u0113': "\\={e}"
  '\u0114': "{\\u E}"
  '\u0115': "{\\u e}"
  '\u0116': "{\\.E}"
  '\u0117': "{\\.e}"
  '\u0118': "\\k{E}"
  '\u0119': "\\k{e}"
  '\u011A': "{\\v E}"
  '\u011B': "{\\v e}"
  '\u011C': "{\\^G}"
  '\u011D': "{\\^g}"
  '\u011E': "{\\u G}"
  '\u011F': "{\\u g}"
  '\u0120': "{\\.G}"
  '\u0121': "{\\.g}"
  '\u0122': "{\\c G}"
  '\u0123': "{\\c g}"
  '\u0124': "{\\^H}"
  '\u0125': "{\\^h}"
  '\u0126': "{\\fontencoding{LELA}\\selectfont\\char40}"
  '\u0128': "{\\~I}"
  '\u0129': "{\\~\\i}"
  '\u012A': "\\={I}"
  '\u012B': "\\={\\i}"
  '\u012C': "{\\u I}"
  '\u012D': "{\\u \\i}"
  '\u012E': "\\k{I}"
  '\u012F': "\\k{i}"
  '\u0130': "{\\.I}"
  '\u0131': "{\\i}"
  '\u0132': "IJ"
  '\u0133': "ij"
  '\u0134': "{\\^J}"
  '\u0135': "{\\^\\j}"
  '\u0136': "{\\c K}"
  '\u0137': "{\\c k}"
  '\u0138': "{\\fontencoding{LELA}\\selectfont\\char91}"
  '\u0139': "{\\'L}"
  '\u013A': "{\\'l}"
  '\u013B': "{\\c L}"
  '\u013C': "{\\c l}"
  '\u013D': "{\\v L}"
  '\u013E': "{\\v l}"
  '\u013F': "{\\fontencoding{LELA}\\selectfont\\char201}"
  '\u0140': "{\\fontencoding{LELA}\\selectfont\\char202}"
  '\u0141': "{\\L}"
  '\u0142': "{\\l}"
  '\u0143': "{\\'N}"
  '\u0144': "{\\'n}"
  '\u0145': "{\\c N}"
  '\u0146': "{\\c n}"
  '\u0147': "{\\v N}"
  '\u0148': "{\\v n}"
  '\u0149': "'n"
  '\u014A': "{\\NG}"
  '\u014B': "{\\ng}"
  '\u014C': "\\={O}"
  '\u014D': "\\={o}"
  '\u014E': "{\\u O}"
  '\u014F': "{\\u o}"
  '\u0150': "{\\H O}"
  '\u0151': "{\\H o}"
  '\u0152': "{\\OE}"
  '\u0153': "{\\oe}"
  '\u0154': "{\\'R}"
  '\u0155': "{\\'r}"
  '\u0156': "{\\c R}"
  '\u0157': "{\\c r}"
  '\u0158': "{\\v R}"
  '\u0159': "{\\v r}"
  '\u015A': "{\\'S}"
  '\u015B': "{\\'s}"
  '\u015C': "{\\^S}"
  '\u015D': "{\\^s}"
  '\u015E': "{\\c S}"
  '\u015F': "{\\c s}"
  '\u0160': "{\\v S}"
  '\u0161': "{\\v s}"
  '\u0162': "{\\c T}"
  '\u0163': "{\\c t}"
  '\u0164': "{\\v T}"
  '\u0165': "{\\v t}"
  '\u0166': "{\\fontencoding{LELA}\\selectfont\\char47}"
  '\u0167': "{\\fontencoding{LELA}\\selectfont\\char63}"
  '\u0168': "{\\~U}"
  '\u0169': "{\\~u}"
  '\u016A': "\\={U}"
  '\u016B': "\\={u}"
  '\u016C': "{\\u U}"
  '\u016D': "{\\u u}"
  '\u016E': "\\r{U}"
  '\u016F': "\\r{u}"
  '\u0170': "{\\H U}"
  '\u0171': "{\\H u}"
  '\u0172': "\\k{U}"
  '\u0173': "\\k{u}"
  '\u0174': "{\\^W}"
  '\u0175': "{\\^w}"
  '\u0176': "{\\^Y}"
  '\u0177': "{\\^y}"
  '\u0178': "{\\\"Y}"
  '\u0179': "{\\'Z}"
  '\u017A': "{\\'z}"
  '\u017B': "{\\.Z}"
  '\u017C': "{\\.z}"
  '\u017D': "{\\v Z}"
  '\u017E': "{\\v z}"
  '\u0195': "{\\texthvlig}"
  '\u019E': "{\\textnrleg}"
  '\u01BA': "{\\fontencoding{LELA}\\selectfont\\char195}"
  '\u01C2': "{\\textdoublepipe}"
  '\u01F5': "{\\'g}"
  '\u0258': "{\\fontencoding{LEIP}\\selectfont\\char61}"
  '\u0261': "g"
  '\u0272': "{\\Elzltln}"
  '\u0278': "{\\textphi}"
  '\u027F': "{\\fontencoding{LEIP}\\selectfont\\char202}"
  '\u029E': "{\\textturnk}"
  '\u02BC': "'"
  '\u02C7': "{\\textasciicaron}"
  '\u02D8': "{\\textasciibreve}"
  '\u02D9': "{\\textperiodcentered}"
  '\u02DA': "\\r{}"
  '\u02DB': "\\k{}"
  '\u02DC': "{\\texttildelow}"
  '\u02DD': "\\H{}"
  '\u02E5': "\\tone{55}"
  '\u02E6': "\\tone{44}"
  '\u02E7': "\\tone{33}"
  '\u02E8': "\\tone{22}"
  '\u02E9': "\\tone{11}"
  '\u0300': "\\`"
  '\u0301': "\\'"
  '\u0302': "\\^"
  '\u0303': "\\~"
  '\u0304': "\\="
  '\u0306': "\\u"
  '\u0307': "\\."
  '\u0308': "\\\""
  '\u030A': "\\r"
  '\u030B': "\\H"
  '\u030C': "\\v"
  '\u030F': "\\cyrchar\\C"
  '\u0311': "{\\fontencoding{LECO}\\selectfont\\char177}"
  '\u0318': "{\\fontencoding{LECO}\\selectfont\\char184}"
  '\u0319': "{\\fontencoding{LECO}\\selectfont\\char185}"
  '\u0322': "{\\Elzrh}"
  '\u0327': "\\c"
  '\u0328': "\\k"
  '\u032B': "{\\fontencoding{LECO}\\selectfont\\char203}"
  '\u032F': "{\\fontencoding{LECO}\\selectfont\\char207}"
  '\u0335': "{\\Elzxl}"
  '\u0336': "{\\Elzbar}"
  '\u0337': "{\\fontencoding{LECO}\\selectfont\\char215}"
  '\u0338': "{\\fontencoding{LECO}\\selectfont\\char216}"
  '\u033A': "{\\fontencoding{LECO}\\selectfont\\char218}"
  '\u033B': "{\\fontencoding{LECO}\\selectfont\\char219}"
  '\u033C': "{\\fontencoding{LECO}\\selectfont\\char220}"
  '\u033D': "{\\fontencoding{LECO}\\selectfont\\char221}"
  '\u0361': "{\\fontencoding{LECO}\\selectfont\\char225}"
  '\u0386': "{\\'A}"
  '\u0388': "{\\'E}"
  '\u0389': "{\\'H}"
  '\u038A': "\\'{}{I}"
  '\u038C': "\\'{}O"
  '\u03AC': "{\\'$\\alpha$}"
  '\u03B8': "{\\texttheta}"
  '\u03CC': "{\\'o}"
  '\u03D0': "\\Pisymbol{ppi022}{87}"
  '\u03D1': "{\\textvartheta}"
  '\u03F4': "{\\textTheta}"
  '\u0401': "{\\cyrchar\\CYRYO}"
  '\u0402': "{\\cyrchar\\CYRDJE}"
  '\u0403': "\\cyrchar{\\'\\CYRG}"
  '\u0404': "{\\cyrchar\\CYRIE}"
  '\u0405': "{\\cyrchar\\CYRDZE}"
  '\u0406': "{\\cyrchar\\CYRII}"
  '\u0407': "{\\cyrchar\\CYRYI}"
  '\u0408': "{\\cyrchar\\CYRJE}"
  '\u0409': "{\\cyrchar\\CYRLJE}"
  '\u040A': "{\\cyrchar\\CYRNJE}"
  '\u040B': "{\\cyrchar\\CYRTSHE}"
  '\u040C': "\\cyrchar{\\'\\CYRK}"
  '\u040E': "{\\cyrchar\\CYRUSHRT}"
  '\u040F': "{\\cyrchar\\CYRDZHE}"
  '\u0410': "{\\cyrchar\\CYRA}"
  '\u0411': "{\\cyrchar\\CYRB}"
  '\u0412': "{\\cyrchar\\CYRV}"
  '\u0413': "{\\cyrchar\\CYRG}"
  '\u0414': "{\\cyrchar\\CYRD}"
  '\u0415': "{\\cyrchar\\CYRE}"
  '\u0416': "{\\cyrchar\\CYRZH}"
  '\u0417': "{\\cyrchar\\CYRZ}"
  '\u0418': "{\\cyrchar\\CYRI}"
  '\u0419': "{\\cyrchar\\CYRISHRT}"
  '\u041A': "{\\cyrchar\\CYRK}"
  '\u041B': "{\\cyrchar\\CYRL}"
  '\u041C': "{\\cyrchar\\CYRM}"
  '\u041D': "{\\cyrchar\\CYRN}"
  '\u041E': "{\\cyrchar\\CYRO}"
  '\u041F': "{\\cyrchar\\CYRP}"
  '\u0420': "{\\cyrchar\\CYRR}"
  '\u0421': "{\\cyrchar\\CYRS}"
  '\u0422': "{\\cyrchar\\CYRT}"
  '\u0423': "{\\cyrchar\\CYRU}"
  '\u0424': "{\\cyrchar\\CYRF}"
  '\u0425': "{\\cyrchar\\CYRH}"
  '\u0426': "{\\cyrchar\\CYRC}"
  '\u0427': "{\\cyrchar\\CYRCH}"
  '\u0428': "{\\cyrchar\\CYRSH}"
  '\u0429': "{\\cyrchar\\CYRSHCH}"
  '\u042A': "{\\cyrchar\\CYRHRDSN}"
  '\u042B': "{\\cyrchar\\CYRERY}"
  '\u042C': "{\\cyrchar\\CYRSFTSN}"
  '\u042D': "{\\cyrchar\\CYREREV}"
  '\u042E': "{\\cyrchar\\CYRYU}"
  '\u042F': "{\\cyrchar\\CYRYA}"
  '\u0430': "{\\cyrchar\\cyra}"
  '\u0431': "{\\cyrchar\\cyrb}"
  '\u0432': "{\\cyrchar\\cyrv}"
  '\u0433': "{\\cyrchar\\cyrg}"
  '\u0434': "{\\cyrchar\\cyrd}"
  '\u0435': "{\\cyrchar\\cyre}"
  '\u0436': "{\\cyrchar\\cyrzh}"
  '\u0437': "{\\cyrchar\\cyrz}"
  '\u0438': "{\\cyrchar\\cyri}"
  '\u0439': "{\\cyrchar\\cyrishrt}"
  '\u043A': "{\\cyrchar\\cyrk}"
  '\u043B': "{\\cyrchar\\cyrl}"
  '\u043C': "{\\cyrchar\\cyrm}"
  '\u043D': "{\\cyrchar\\cyrn}"
  '\u043E': "{\\cyrchar\\cyro}"
  '\u043F': "{\\cyrchar\\cyrp}"
  '\u0440': "{\\cyrchar\\cyrr}"
  '\u0441': "{\\cyrchar\\cyrs}"
  '\u0442': "{\\cyrchar\\cyrt}"
  '\u0443': "{\\cyrchar\\cyru}"
  '\u0444': "{\\cyrchar\\cyrf}"
  '\u0445': "{\\cyrchar\\cyrh}"
  '\u0446': "{\\cyrchar\\cyrc}"
  '\u0447': "{\\cyrchar\\cyrch}"
  '\u0448': "{\\cyrchar\\cyrsh}"
  '\u0449': "{\\cyrchar\\cyrshch}"
  '\u044A': "{\\cyrchar\\cyrhrdsn}"
  '\u044B': "{\\cyrchar\\cyrery}"
  '\u044C': "{\\cyrchar\\cyrsftsn}"
  '\u044D': "{\\cyrchar\\cyrerev}"
  '\u044E': "{\\cyrchar\\cyryu}"
  '\u044F': "{\\cyrchar\\cyrya}"
  '\u0451': "{\\cyrchar\\cyryo}"
  '\u0452': "{\\cyrchar\\cyrdje}"
  '\u0453': "\\cyrchar{\\'\\cyrg}"
  '\u0454': "{\\cyrchar\\cyrie}"
  '\u0455': "{\\cyrchar\\cyrdze}"
  '\u0456': "{\\cyrchar\\cyrii}"
  '\u0457': "{\\cyrchar\\cyryi}"
  '\u0458': "{\\cyrchar\\cyrje}"
  '\u0459': "{\\cyrchar\\cyrlje}"
  '\u045A': "{\\cyrchar\\cyrnje}"
  '\u045B': "{\\cyrchar\\cyrtshe}"
  '\u045C': "\\cyrchar{\\'\\cyrk}"
  '\u045E': "{\\cyrchar\\cyrushrt}"
  '\u045F': "{\\cyrchar\\cyrdzhe}"
  '\u0460': "{\\cyrchar\\CYROMEGA}"
  '\u0461': "{\\cyrchar\\cyromega}"
  '\u0462': "{\\cyrchar\\CYRYAT}"
  '\u0464': "{\\cyrchar\\CYRIOTE}"
  '\u0465': "{\\cyrchar\\cyriote}"
  '\u0466': "{\\cyrchar\\CYRLYUS}"
  '\u0467': "{\\cyrchar\\cyrlyus}"
  '\u0468': "{\\cyrchar\\CYRIOTLYUS}"
  '\u0469': "{\\cyrchar\\cyriotlyus}"
  '\u046A': "{\\cyrchar\\CYRBYUS}"
  '\u046C': "{\\cyrchar\\CYRIOTBYUS}"
  '\u046D': "{\\cyrchar\\cyriotbyus}"
  '\u046E': "{\\cyrchar\\CYRKSI}"
  '\u046F': "{\\cyrchar\\cyrksi}"
  '\u0470': "{\\cyrchar\\CYRPSI}"
  '\u0471': "{\\cyrchar\\cyrpsi}"
  '\u0472': "{\\cyrchar\\CYRFITA}"
  '\u0474': "{\\cyrchar\\CYRIZH}"
  '\u0478': "{\\cyrchar\\CYRUK}"
  '\u0479': "{\\cyrchar\\cyruk}"
  '\u047A': "{\\cyrchar\\CYROMEGARND}"
  '\u047B': "{\\cyrchar\\cyromegarnd}"
  '\u047C': "{\\cyrchar\\CYROMEGATITLO}"
  '\u047D': "{\\cyrchar\\cyromegatitlo}"
  '\u047E': "{\\cyrchar\\CYROT}"
  '\u047F': "{\\cyrchar\\cyrot}"
  '\u0480': "{\\cyrchar\\CYRKOPPA}"
  '\u0481': "{\\cyrchar\\cyrkoppa}"
  '\u0482': "{\\cyrchar\\cyrthousands}"
  '\u0488': "{\\cyrchar\\cyrhundredthousands}"
  '\u0489': "{\\cyrchar\\cyrmillions}"
  '\u048C': "{\\cyrchar\\CYRSEMISFTSN}"
  '\u048D': "{\\cyrchar\\cyrsemisftsn}"
  '\u048E': "{\\cyrchar\\CYRRTICK}"
  '\u048F': "{\\cyrchar\\cyrrtick}"
  '\u0490': "{\\cyrchar\\CYRGUP}"
  '\u0491': "{\\cyrchar\\cyrgup}"
  '\u0492': "{\\cyrchar\\CYRGHCRS}"
  '\u0493': "{\\cyrchar\\cyrghcrs}"
  '\u0494': "{\\cyrchar\\CYRGHK}"
  '\u0495': "{\\cyrchar\\cyrghk}"
  '\u0496': "{\\cyrchar\\CYRZHDSC}"
  '\u0497': "{\\cyrchar\\cyrzhdsc}"
  '\u0498': "{\\cyrchar\\CYRZDSC}"
  '\u0499': "{\\cyrchar\\cyrzdsc}"
  '\u049A': "{\\cyrchar\\CYRKDSC}"
  '\u049B': "{\\cyrchar\\cyrkdsc}"
  '\u049C': "{\\cyrchar\\CYRKVCRS}"
  '\u049D': "{\\cyrchar\\cyrkvcrs}"
  '\u049E': "{\\cyrchar\\CYRKHCRS}"
  '\u049F': "{\\cyrchar\\cyrkhcrs}"
  '\u04A0': "{\\cyrchar\\CYRKBEAK}"
  '\u04A1': "{\\cyrchar\\cyrkbeak}"
  '\u04A2': "{\\cyrchar\\CYRNDSC}"
  '\u04A3': "{\\cyrchar\\cyrndsc}"
  '\u04A4': "{\\cyrchar\\CYRNG}"
  '\u04A5': "{\\cyrchar\\cyrng}"
  '\u04A6': "{\\cyrchar\\CYRPHK}"
  '\u04A7': "{\\cyrchar\\cyrphk}"
  '\u04A8': "{\\cyrchar\\CYRABHHA}"
  '\u04A9': "{\\cyrchar\\cyrabhha}"
  '\u04AA': "{\\cyrchar\\CYRSDSC}"
  '\u04AB': "{\\cyrchar\\cyrsdsc}"
  '\u04AC': "{\\cyrchar\\CYRTDSC}"
  '\u04AD': "{\\cyrchar\\cyrtdsc}"
  '\u04AE': "{\\cyrchar\\CYRY}"
  '\u04AF': "{\\cyrchar\\cyry}"
  '\u04B0': "{\\cyrchar\\CYRYHCRS}"
  '\u04B1': "{\\cyrchar\\cyryhcrs}"
  '\u04B2': "{\\cyrchar\\CYRHDSC}"
  '\u04B3': "{\\cyrchar\\cyrhdsc}"
  '\u04B4': "{\\cyrchar\\CYRTETSE}"
  '\u04B5': "{\\cyrchar\\cyrtetse}"
  '\u04B6': "{\\cyrchar\\CYRCHRDSC}"
  '\u04B7': "{\\cyrchar\\cyrchrdsc}"
  '\u04B8': "{\\cyrchar\\CYRCHVCRS}"
  '\u04B9': "{\\cyrchar\\cyrchvcrs}"
  '\u04BA': "{\\cyrchar\\CYRSHHA}"
  '\u04BB': "{\\cyrchar\\cyrshha}"
  '\u04BC': "{\\cyrchar\\CYRABHCH}"
  '\u04BD': "{\\cyrchar\\cyrabhch}"
  '\u04BE': "{\\cyrchar\\CYRABHCHDSC}"
  '\u04BF': "{\\cyrchar\\cyrabhchdsc}"
  '\u04C0': "{\\cyrchar\\CYRpalochka}"
  '\u04C3': "{\\cyrchar\\CYRKHK}"
  '\u04C4': "{\\cyrchar\\cyrkhk}"
  '\u04C7': "{\\cyrchar\\CYRNHK}"
  '\u04C8': "{\\cyrchar\\cyrnhk}"
  '\u04CB': "{\\cyrchar\\CYRCHLDSC}"
  '\u04CC': "{\\cyrchar\\cyrchldsc}"
  '\u04D4': "{\\cyrchar\\CYRAE}"
  '\u04D5': "{\\cyrchar\\cyrae}"
  '\u04D8': "{\\cyrchar\\CYRSCHWA}"
  '\u04D9': "{\\cyrchar\\cyrschwa}"
  '\u04E0': "{\\cyrchar\\CYRABHDZE}"
  '\u04E1': "{\\cyrchar\\cyrabhdze}"
  '\u04E8': "{\\cyrchar\\CYROTLD}"
  '\u04E9': "{\\cyrchar\\cyrotld}"
  '\u2002': "\\hspace{0.6em}"
  '\u2003': "\\hspace{1em}"
  '\u2004': "\\hspace{0.33em}"
  '\u2005': "\\hspace{0.25em}"
  '\u2006': "\\hspace{0.166em}"
  '\u2007': "\\hphantom{0}"
  '\u2008': "\\hphantom{,}"
  '\u2009': "\\hspace{0.167em}"
  '\u2010': "-"
  '\u2013': "{\\textendash}"
  '\u2014': "{\\textemdash}"
  '\u2015': "\\rule{1em}{1pt}"
  '\u2018': "`"
  '\u2019': "'"
  '\u201A': ","
  '\u201C': "{\\textquotedblleft}"
  '\u201D': "{\\textquotedblright}"
  '\u201E': ",,"
  '\u2020': "{\\textdagger}"
  '\u2021': "{\\textdaggerdbl}"
  '\u2022': "{\\textbullet}"
  '\u2024': "."
  '\u2025': ".."
  '\u2026': "{\\ldots}"
  '\u2030': "{\\textperthousand}"
  '\u2031': "{\\textpertenthousand}"
  '\u2039': "{\\guilsinglleft}"
  '\u203A': "{\\guilsinglright}"
  '\u205F': "{\\mkern4mu}"
  '\u2060': "{\\nolinebreak}"
  '\u20A7': "\\ensuremath{\\Elzpes}"
  '\u20AC': "{\\mbox{\\texteuro}}"
  '\u210A': "\\mathscr{g}"
  '\u2116': "{\\cyrchar\\textnumero}"
  '\u2122': "{\\texttrademark}"
  '\u212B': "{\\AA}"
  '\u2212': "-"
  '\u2254': ":="
  '\u2305': "{\\barwedge}"
  '\u2423': "{\\textvisiblespace}"
  '\u2460': "\\ding{172}"
  '\u2461': "\\ding{173}"
  '\u2462': "\\ding{174}"
  '\u2463': "\\ding{175}"
  '\u2464': "\\ding{176}"
  '\u2465': "\\ding{177}"
  '\u2466': "\\ding{178}"
  '\u2467': "\\ding{179}"
  '\u2468': "\\ding{180}"
  '\u2469': "\\ding{181}"
  '\u25A0': "\\ding{110}"
  '\u25B2': "\\ding{115}"
  '\u25BC': "\\ding{116}"
  '\u25C6': "\\ding{117}"
  '\u25CF': "\\ding{108}"
  '\u25D7': "\\ding{119}"
  '\u2605': "\\ding{72}"
  '\u2606': "\\ding{73}"
  '\u260E': "\\ding{37}"
  '\u261B': "\\ding{42}"
  '\u261E': "\\ding{43}"
  '\u263E': "{\\rightmoon}"
  '\u263F': "{\\mercury}"
  '\u2640': "{\\venus}"
  '\u2642': "{\\male}"
  '\u2643': "{\\jupiter}"
  '\u2644': "{\\saturn}"
  '\u2645': "{\\uranus}"
  '\u2646': "{\\neptune}"
  '\u2647': "{\\pluto}"
  '\u2648': "{\\aries}"
  '\u2649': "{\\taurus}"
  '\u264A': "{\\gemini}"
  '\u264B': "{\\cancer}"
  '\u264C': "{\\leo}"
  '\u264D': "{\\virgo}"
  '\u264E': "{\\libra}"
  '\u264F': "{\\scorpio}"
  '\u2650': "{\\sagittarius}"
  '\u2651': "{\\capricornus}"
  '\u2652': "{\\aquarius}"
  '\u2653': "{\\pisces}"
  '\u2660': "\\ding{171}"
  '\u2663': "\\ding{168}"
  '\u2665': "\\ding{170}"
  '\u2666': "\\ding{169}"
  '\u2669': "{\\quarternote}"
  '\u266A': "{\\eighthnote}"
  '\u2701': "\\ding{33}"
  '\u2702': "\\ding{34}"
  '\u2703': "\\ding{35}"
  '\u2704': "\\ding{36}"
  '\u2706': "\\ding{38}"
  '\u2707': "\\ding{39}"
  '\u2708': "\\ding{40}"
  '\u2709': "\\ding{41}"
  '\u270C': "\\ding{44}"
  '\u270D': "\\ding{45}"
  '\u270E': "\\ding{46}"
  '\u270F': "\\ding{47}"
  '\u2710': "\\ding{48}"
  '\u2711': "\\ding{49}"
  '\u2712': "\\ding{50}"
  '\u2713': "\\ding{51}"
  '\u2714': "\\ding{52}"
  '\u2715': "\\ding{53}"
  '\u2716': "\\ding{54}"
  '\u2717': "\\ding{55}"
  '\u2718': "\\ding{56}"
  '\u2719': "\\ding{57}"
  '\u271A': "\\ding{58}"
  '\u271B': "\\ding{59}"
  '\u271C': "\\ding{60}"
  '\u271D': "\\ding{61}"
  '\u271E': "\\ding{62}"
  '\u271F': "\\ding{63}"
  '\u2720': "\\ding{64}"
  '\u2721': "\\ding{65}"
  '\u2722': "\\ding{66}"
  '\u2723': "\\ding{67}"
  '\u2724': "\\ding{68}"
  '\u2725': "\\ding{69}"
  '\u2726': "\\ding{70}"
  '\u2727': "\\ding{71}"
  '\u2729': "\\ding{73}"
  '\u272A': "\\ding{74}"
  '\u272B': "\\ding{75}"
  '\u272C': "\\ding{76}"
  '\u272D': "\\ding{77}"
  '\u272E': "\\ding{78}"
  '\u272F': "\\ding{79}"
  '\u2730': "\\ding{80}"
  '\u2731': "\\ding{81}"
  '\u2732': "\\ding{82}"
  '\u2733': "\\ding{83}"
  '\u2734': "\\ding{84}"
  '\u2735': "\\ding{85}"
  '\u2736': "\\ding{86}"
  '\u2737': "\\ding{87}"
  '\u2738': "\\ding{88}"
  '\u2739': "\\ding{89}"
  '\u273A': "\\ding{90}"
  '\u273B': "\\ding{91}"
  '\u273C': "\\ding{92}"
  '\u273D': "\\ding{93}"
  '\u273E': "\\ding{94}"
  '\u273F': "\\ding{95}"
  '\u2740': "\\ding{96}"
  '\u2741': "\\ding{97}"
  '\u2742': "\\ding{98}"
  '\u2743': "\\ding{99}"
  '\u2744': "\\ding{100}"
  '\u2745': "\\ding{101}"
  '\u2746': "\\ding{102}"
  '\u2747': "\\ding{103}"
  '\u2748': "\\ding{104}"
  '\u2749': "\\ding{105}"
  '\u274A': "\\ding{106}"
  '\u274B': "\\ding{107}"
  '\u274D': "\\ding{109}"
  '\u274F': "\\ding{111}"
  '\u2750': "\\ding{112}"
  '\u2751': "\\ding{113}"
  '\u2752': "\\ding{114}"
  '\u2756': "\\ding{118}"
  '\u2758': "\\ding{120}"
  '\u2759': "\\ding{121}"
  '\u275A': "\\ding{122}"
  '\u275B': "\\ding{123}"
  '\u275C': "\\ding{124}"
  '\u275D': "\\ding{125}"
  '\u275E': "\\ding{126}"
  '\u2761': "\\ding{161}"
  '\u2762': "\\ding{162}"
  '\u2763': "\\ding{163}"
  '\u2764': "\\ding{164}"
  '\u2765': "\\ding{165}"
  '\u2766': "\\ding{166}"
  '\u2767': "\\ding{167}"
  '\u2776': "\\ding{182}"
  '\u2777': "\\ding{183}"
  '\u2778': "\\ding{184}"
  '\u2779': "\\ding{185}"
  '\u277A': "\\ding{186}"
  '\u277B': "\\ding{187}"
  '\u277C': "\\ding{188}"
  '\u277D': "\\ding{189}"
  '\u277E': "\\ding{190}"
  '\u277F': "\\ding{191}"
  '\u2780': "\\ding{192}"
  '\u2781': "\\ding{193}"
  '\u2782': "\\ding{194}"
  '\u2783': "\\ding{195}"
  '\u2784': "\\ding{196}"
  '\u2785': "\\ding{197}"
  '\u2786': "\\ding{198}"
  '\u2787': "\\ding{199}"
  '\u2788': "\\ding{200}"
  '\u2789': "\\ding{201}"
  '\u278A': "\\ding{202}"
  '\u278B': "\\ding{203}"
  '\u278C': "\\ding{204}"
  '\u278D': "\\ding{205}"
  '\u278E': "\\ding{206}"
  '\u278F': "\\ding{207}"
  '\u2790': "\\ding{208}"
  '\u2791': "\\ding{209}"
  '\u2792': "\\ding{210}"
  '\u2793': "\\ding{211}"
  '\u2794': "\\ding{212}"
  '\u2798': "\\ding{216}"
  '\u2799': "\\ding{217}"
  '\u279A': "\\ding{218}"
  '\u279B': "\\ding{219}"
  '\u279C': "\\ding{220}"
  '\u279D': "\\ding{221}"
  '\u279E': "\\ding{222}"
  '\u279F': "\\ding{223}"
  '\u27A0': "\\ding{224}"
  '\u27A1': "\\ding{225}"
  '\u27A2': "\\ding{226}"
  '\u27A3': "\\ding{227}"
  '\u27A4': "\\ding{228}"
  '\u27A5': "\\ding{229}"
  '\u27A6': "\\ding{230}"
  '\u27A7': "\\ding{231}"
  '\u27A8': "\\ding{232}"
  '\u27A9': "\\ding{233}"
  '\u27AA': "\\ding{234}"
  '\u27AB': "\\ding{235}"
  '\u27AC': "\\ding{236}"
  '\u27AD': "\\ding{237}"
  '\u27AE': "\\ding{238}"
  '\u27AF': "\\ding{239}"
  '\u27B1': "\\ding{241}"
  '\u27B2': "\\ding{242}"
  '\u27B3': "\\ding{243}"
  '\u27B4': "\\ding{244}"
  '\u27B5': "\\ding{245}"
  '\u27B6': "\\ding{246}"
  '\u27B7': "\\ding{247}"
  '\u27B8': "\\ding{248}"
  '\u27B9': "\\ding{249}"
  '\u27BA': "\\ding{250}"
  '\u27BB': "\\ding{251}"
  '\u27BC': "\\ding{252}"
  '\u27BD': "\\ding{253}"
  '\u27BE': "\\ding{254}"
  '\u27E8': "{\\langle}"
  '\u27E9': "{\\rangle}"
  '\uFB00': "ff"
  '\uFB01': "fi"
  '\uFB02': "fl"
  '\uFB03': "ffi"
  '\uFB04': "ffl"
  '\uFFFD': "\\dbend"
  '\uD835\uDEB9': "\\mathbf{\\vartheta}"
  '\uD835\uDEDD': "\\mathbf{\\vartheta}"
  '\uD835\uDEDE': "\\mathbf{\\varkappa}"
  '\uD835\uDEDF': "\\mathbf{\\phi}"
  '\uD835\uDEE0': "\\mathbf{\\varrho}"
  '\uD835\uDEE1': "\\mathbf{\\varpi}"
  '\uD835\uDEF3': "\\mathsl{\\vartheta}"
  '\uD835\uDF17': "\\mathsl{\\vartheta}"
  '\uD835\uDF18': "\\mathsl{\\varkappa}"
  '\uD835\uDF19': "\\mathsl{\\phi}"
  '\uD835\uDF1A': "\\mathsl{\\varrho}"
  '\uD835\uDF1B': "\\mathsl{\\varpi}"
  '\uD835\uDF2D': "\\mathbit{O}"
  '\uD835\uDF51': "\\mathbit{\\vartheta}"
  '\uD835\uDF52': "\\mathbit{\\varkappa}"
  '\uD835\uDF53': "\\mathbit{\\phi}"
  '\uD835\uDF54': "\\mathbit{\\varrho}"
  '\uD835\uDF55': "\\mathbit{\\varpi}"
  '\uD835\uDF67': "\\mathsfbf{\\vartheta}"
  '\uD835\uDF8B': "\\mathsfbf{\\vartheta}"
  '\uD835\uDF8C': "\\mathsfbf{\\varkappa}"
  '\uD835\uDF8D': "\\mathsfbf{\\phi}"
  '\uD835\uDF8E': "\\mathsfbf{\\varrho}"
  '\uD835\uDF8F': "\\mathsfbf{\\varpi}"
  '\uD835\uDFA1': "\\mathsfbfsl{\\vartheta}"
  '\uD835\uDFC5': "\\mathsfbfsl{\\vartheta}"
  '\uD835\uDFC6': "\\mathsfbfsl{\\varkappa}"
  '\uD835\uDFC7': "\\mathsfbfsl{\\phi}"
  '\uD835\uDFC8': "\\mathsfbfsl{\\varrho}"
  '\uD835\uDFC9': "\\mathsfbfsl{\\varpi}"
LaTeX.toUnicode =
  "\\#": '#'
  "{\\textdollar}": '$'
  "\\textdollar ": '$'
  "\\%": '%'
  "\\&": '&'
  "{[}": '['
  "\\backslash": '\\'
  "\\^{}": '^'
  "\\_": '_'
  "\\{": '{'
  "\\}": '}'
  "{\\textasciitilde}": '~'
  "\\textasciitilde ": '~'
  "{\\textexclamdown}": '\u00A1'
  "\\textexclamdown ": '\u00A1'
  "{\\textcent}": '\u00A2'
  "\\textcent ": '\u00A2'
  "{\\textsterling}": '\u00A3'
  "\\textsterling ": '\u00A3'
  "{\\textcurrency}": '\u00A4'
  "\\textcurrency ": '\u00A4'
  "{\\textyen}": '\u00A5'
  "\\textyen ": '\u00A5'
  "{\\textbrokenbar}": '\u00A6'
  "\\textbrokenbar ": '\u00A6'
  "{\\textsection}": '\u00A7'
  "\\textsection ": '\u00A7'
  "{\\textasciidieresis}": '\u00A8'
  "\\textasciidieresis ": '\u00A8'
  "{\\textcopyright}": '\u00A9'
  "\\textcopyright ": '\u00A9'
  "{\\textordfeminine}": '\u00AA'
  "\\textordfeminine ": '\u00AA'
  "{\\guillemotleft}": '\u00AB'
  "\\guillemotleft ": '\u00AB'
  "{\\lnot}": '\u00AC'
  "\\lnot ": '\u00AC'
  "\\-": '\u00AD'
  "{\\textregistered}": '\u00AE'
  "\\textregistered ": '\u00AE'
  "{\\textasciimacron}": '\u00AF'
  "\\textasciimacron ": '\u00AF'
  "{\\textdegree}": '\u00B0'
  "\\textdegree ": '\u00B0'
  "{\\pm}": '\u00B1'
  "\\pm ": '\u00B1'
  "{^2}": '\u00B2'
  "{^3}": '\u00B3'
  "{\\textasciiacute}": '\u00B4'
  "\\textasciiacute ": '\u00B4'
  "\\mathrm{\\mu}": '\u00B5'
  "{\\textparagraph}": '\u00B6'
  "\\textparagraph ": '\u00B6'
  "{\\cdot}": '\u00B7'
  "\\cdot ": '\u00B7'
  "\\c{}": '\u00B8'
  "{^1}": '\u00B9'
  "{\\textordmasculine}": '\u00BA'
  "\\textordmasculine ": '\u00BA'
  "{\\guillemotright}": '\u00BB'
  "\\guillemotright ": '\u00BB'
  "{\\textonequarter}": '\u00BC'
  "\\textonequarter ": '\u00BC'
  "{\\textonehalf}": '\u00BD'
  "\\textonehalf ": '\u00BD'
  "{\\textthreequarters}": '\u00BE'
  "\\textthreequarters ": '\u00BE'
  "{\\textquestiondown}": '\u00BF'
  "\\textquestiondown ": '\u00BF'
  "{\\`A}": '\u00C0'
  "{\\'A}": '\u00C1'
  "{\\^A}": '\u00C2'
  "{\\~A}": '\u00C3'
  "{\\\"A}": '\u00C4'
  "{\\AA}": '\u00C5'
  "\\AA ": '\u00C5'
  "{\\AE}": '\u00C6'
  "\\AE ": '\u00C6'
  "{\\c C}": '\u00C7'
  "{\\`E}": '\u00C8'
  "{\\'E}": '\u00C9'
  "{\\^E}": '\u00CA'
  "{\\\"E}": '\u00CB'
  "{\\`I}": '\u00CC'
  "{\\'I}": '\u00CD'
  "{\\^I}": '\u00CE'
  "{\\\"I}": '\u00CF'
  "{\\DH}": '\u00D0'
  "\\DH ": '\u00D0'
  "{\\~N}": '\u00D1'
  "{\\`O}": '\u00D2'
  "{\\'O}": '\u00D3'
  "{\\^O}": '\u00D4'
  "{\\~O}": '\u00D5'
  "{\\\"O}": '\u00D6'
  "{\\texttimes}": '\u00D7'
  "\\texttimes ": '\u00D7'
  "{\\O}": '\u00D8'
  "\\O ": '\u00D8'
  "{\\`U}": '\u00D9'
  "{\\'U}": '\u00DA'
  "{\\^U}": '\u00DB'
  "{\\\"U}": '\u00DC'
  "{\\'Y}": '\u00DD'
  "{\\TH}": '\u00DE'
  "\\TH ": '\u00DE'
  "{\\ss}": '\u00DF'
  "\\ss ": '\u00DF'
  "{\\`a}": '\u00E0'
  "{\\'a}": '\u00E1'
  "{\\^a}": '\u00E2'
  "{\\~a}": '\u00E3'
  "{\\\"a}": '\u00E4'
  "{\\aa}": '\u00E5'
  "\\aa ": '\u00E5'
  "{\\ae}": '\u00E6'
  "\\ae ": '\u00E6'
  "{\\c c}": '\u00E7'
  "{\\`e}": '\u00E8'
  "{\\'e}": '\u00E9'
  "{\\^e}": '\u00EA'
  "{\\\"e}": '\u00EB'
  "{\\`\\i}": '\u00EC'
  "{\\'\\i}": '\u00ED'
  "{\\^\\i}": '\u00EE'
  "{\\\"\\i}": '\u00EF'
  "{\\dh}": '\u00F0'
  "\\dh ": '\u00F0'
  "{\\~n}": '\u00F1'
  "{\\`o}": '\u00F2'
  "{\\'o}": '\u00F3'
  "{\\^o}": '\u00F4'
  "{\\~o}": '\u00F5'
  "{\\\"o}": '\u00F6'
  "{\\div}": '\u00F7'
  "\\div ": '\u00F7'
  "{\\o}": '\u00F8'
  "\\o ": '\u00F8'
  "{\\`u}": '\u00F9'
  "{\\'u}": '\u00FA'
  "{\\^u}": '\u00FB'
  "{\\\"u}": '\u00FC'
  "{\\'y}": '\u00FD'
  "{\\th}": '\u00FE'
  "\\th ": '\u00FE'
  "{\\\"y}": '\u00FF'
  "\\={A}": '\u0100'
  "\\=A": '\u0100'
  "\\={a}": '\u0101'
  "\\=a": '\u0101'
  "{\\u A}": '\u0102'
  "{\\u a}": '\u0103'
  "\\k{A}": '\u0104'
  "\\k{a}": '\u0105'
  "{\\'C}": '\u0106'
  "{\\'c}": '\u0107'
  "{\\^C}": '\u0108'
  "{\\^c}": '\u0109'
  "{\\.C}": '\u010A'
  "{\\.c}": '\u010B'
  "{\\v C}": '\u010C'
  "{\\v c}": '\u010D'
  "{\\v D}": '\u010E'
  "{\\v d}": '\u010F'
  "{\\DJ}": '\u0110'
  "\\DJ ": '\u0110'
  "{\\dj}": '\u0111'
  "\\dj ": '\u0111'
  "\\={E}": '\u0112'
  "\\=E": '\u0112'
  "\\={e}": '\u0113'
  "\\=e": '\u0113'
  "{\\u E}": '\u0114'
  "{\\u e}": '\u0115'
  "{\\.E}": '\u0116'
  "{\\.e}": '\u0117'
  "\\k{E}": '\u0118'
  "\\k{e}": '\u0119'
  "{\\v E}": '\u011A'
  "{\\v e}": '\u011B'
  "{\\^G}": '\u011C'
  "{\\^g}": '\u011D'
  "{\\u G}": '\u011E'
  "{\\u g}": '\u011F'
  "{\\.G}": '\u0120'
  "{\\.g}": '\u0121'
  "{\\c G}": '\u0122'
  "{\\c g}": '\u0123'
  "{\\^H}": '\u0124'
  "{\\^h}": '\u0125'
  "{\\fontencoding{LELA}\\selectfont\\char40}": '\u0126'
  "{\\Elzxh}": '\u0127'
  "\\Elzxh ": '\u0127'
  "{\\~I}": '\u0128'
  "{\\~\\i}": '\u0129'
  "\\={I}": '\u012A'
  "\\=I": '\u012A'
  "\\={\\i}": '\u012B'
  "{\\u I}": '\u012C'
  "{\\u \\i}": '\u012D'
  "\\k{I}": '\u012E'
  "\\k{i}": '\u012F'
  "{\\.I}": '\u0130'
  "{\\i}": '\u0131'
  "\\i ": '\u0131'
  "{\\^J}": '\u0134'
  "{\\^\\j}": '\u0135'
  "{\\c K}": '\u0136'
  "{\\c k}": '\u0137'
  "{\\fontencoding{LELA}\\selectfont\\char91}": '\u0138'
  "{\\'L}": '\u0139'
  "{\\'l}": '\u013A'
  "{\\c L}": '\u013B'
  "{\\c l}": '\u013C'
  "{\\v L}": '\u013D'
  "{\\v l}": '\u013E'
  "{\\fontencoding{LELA}\\selectfont\\char201}": '\u013F'
  "{\\fontencoding{LELA}\\selectfont\\char202}": '\u0140'
  "{\\L}": '\u0141'
  "\\L ": '\u0141'
  "{\\l}": '\u0142'
  "\\l ": '\u0142'
  "{\\'N}": '\u0143'
  "{\\'n}": '\u0144'
  "{\\c N}": '\u0145'
  "{\\c n}": '\u0146'
  "{\\v N}": '\u0147'
  "{\\v n}": '\u0148'
  "'n": '\u0149'
  "{\\NG}": '\u014A'
  "\\NG ": '\u014A'
  "{\\ng}": '\u014B'
  "\\ng ": '\u014B'
  "\\={O}": '\u014C'
  "\\=O": '\u014C'
  "\\={o}": '\u014D'
  "\\=o": '\u014D'
  "{\\u O}": '\u014E'
  "{\\u o}": '\u014F'
  "{\\H O}": '\u0150'
  "{\\H o}": '\u0151'
  "{\\OE}": '\u0152'
  "\\OE ": '\u0152'
  "{\\oe}": '\u0153'
  "\\oe ": '\u0153'
  "{\\'R}": '\u0154'
  "{\\'r}": '\u0155'
  "{\\c R}": '\u0156'
  "{\\c r}": '\u0157'
  "{\\v R}": '\u0158'
  "{\\v r}": '\u0159'
  "{\\'S}": '\u015A'
  "{\\'s}": '\u015B'
  "{\\^S}": '\u015C'
  "{\\^s}": '\u015D'
  "{\\c S}": '\u015E'
  "{\\c s}": '\u015F'
  "{\\v S}": '\u0160'
  "{\\v s}": '\u0161'
  "{\\c T}": '\u0162'
  "{\\c t}": '\u0163'
  "{\\v T}": '\u0164'
  "{\\v t}": '\u0165'
  "{\\fontencoding{LELA}\\selectfont\\char47}": '\u0166'
  "{\\fontencoding{LELA}\\selectfont\\char63}": '\u0167'
  "{\\~U}": '\u0168'
  "{\\~u}": '\u0169'
  "\\={U}": '\u016A'
  "\\=U": '\u016A'
  "\\={u}": '\u016B'
  "\\=u": '\u016B'
  "{\\u U}": '\u016C'
  "{\\u u}": '\u016D'
  "\\r{U}": '\u016E'
  "\\r{u}": '\u016F'
  "{\\H U}": '\u0170'
  "{\\H u}": '\u0171'
  "\\k{U}": '\u0172'
  "\\k{u}": '\u0173'
  "{\\^W}": '\u0174'
  "{\\^w}": '\u0175'
  "{\\^Y}": '\u0176'
  "{\\^y}": '\u0177'
  "{\\\"Y}": '\u0178'
  "{\\'Z}": '\u0179'
  "{\\'z}": '\u017A'
  "{\\.Z}": '\u017B'
  "{\\.z}": '\u017C'
  "{\\v Z}": '\u017D'
  "{\\v z}": '\u017E'
  "{\\texthvlig}": '\u0195'
  "\\texthvlig ": '\u0195'
  "{\\textnrleg}": '\u019E'
  "\\textnrleg ": '\u019E'
  "{\\eth}": '\u01AA'
  "\\eth ": '\u01AA'
  "{\\fontencoding{LELA}\\selectfont\\char195}": '\u01BA'
  "{\\textdoublepipe}": '\u01C2'
  "\\textdoublepipe ": '\u01C2'
  "{\\'g}": '\u01F5'
  "{\\Elztrna}": '\u0250'
  "\\Elztrna ": '\u0250'
  "{\\Elztrnsa}": '\u0252'
  "\\Elztrnsa ": '\u0252'
  "{\\Elzopeno}": '\u0254'
  "\\Elzopeno ": '\u0254'
  "{\\Elzrtld}": '\u0256'
  "\\Elzrtld ": '\u0256'
  "{\\fontencoding{LEIP}\\selectfont\\char61}": '\u0258'
  "{\\Elzschwa}": '\u0259'
  "\\Elzschwa ": '\u0259'
  "{\\varepsilon}": '\u025B'
  "\\varepsilon ": '\u025B'
  "{\\Elzpgamma}": '\u0263'
  "\\Elzpgamma ": '\u0263'
  "{\\Elzpbgam}": '\u0264'
  "\\Elzpbgam ": '\u0264'
  "{\\Elztrnh}": '\u0265'
  "\\Elztrnh ": '\u0265'
  "{\\Elzbtdl}": '\u026C'
  "\\Elzbtdl ": '\u026C'
  "{\\Elzrtll}": '\u026D'
  "\\Elzrtll ": '\u026D'
  "{\\Elztrnm}": '\u026F'
  "\\Elztrnm ": '\u026F'
  "{\\Elztrnmlr}": '\u0270'
  "\\Elztrnmlr ": '\u0270'
  "{\\Elzltlmr}": '\u0271'
  "\\Elzltlmr ": '\u0271'
  "{\\Elzltln}": '\u0272'
  "\\Elzltln ": '\u0272'
  "{\\Elzrtln}": '\u0273'
  "\\Elzrtln ": '\u0273'
  "{\\Elzclomeg}": '\u0277'
  "\\Elzclomeg ": '\u0277'
  "{\\textphi}": '\u0278'
  "\\textphi ": '\u0278'
  "{\\Elztrnr}": '\u0279'
  "\\Elztrnr ": '\u0279'
  "{\\Elztrnrl}": '\u027A'
  "\\Elztrnrl ": '\u027A'
  "{\\Elzrttrnr}": '\u027B'
  "\\Elzrttrnr ": '\u027B'
  "{\\Elzrl}": '\u027C'
  "\\Elzrl ": '\u027C'
  "{\\Elzrtlr}": '\u027D'
  "\\Elzrtlr ": '\u027D'
  "{\\Elzfhr}": '\u027E'
  "\\Elzfhr ": '\u027E'
  "{\\fontencoding{LEIP}\\selectfont\\char202}": '\u027F'
  "{\\Elzrtls}": '\u0282'
  "\\Elzrtls ": '\u0282'
  "{\\Elzesh}": '\u0283'
  "\\Elzesh ": '\u0283'
  "{\\Elztrnt}": '\u0287'
  "\\Elztrnt ": '\u0287'
  "{\\Elzrtlt}": '\u0288'
  "\\Elzrtlt ": '\u0288'
  "{\\Elzpupsil}": '\u028A'
  "\\Elzpupsil ": '\u028A'
  "{\\Elzpscrv}": '\u028B'
  "\\Elzpscrv ": '\u028B'
  "{\\Elzinvv}": '\u028C'
  "\\Elzinvv ": '\u028C'
  "{\\Elzinvw}": '\u028D'
  "\\Elzinvw ": '\u028D'
  "{\\Elztrny}": '\u028E'
  "\\Elztrny ": '\u028E'
  "{\\Elzrtlz}": '\u0290'
  "\\Elzrtlz ": '\u0290'
  "{\\Elzyogh}": '\u0292'
  "\\Elzyogh ": '\u0292'
  "{\\Elzglst}": '\u0294'
  "\\Elzglst ": '\u0294'
  "{\\Elzreglst}": '\u0295'
  "\\Elzreglst ": '\u0295'
  "{\\Elzinglst}": '\u0296'
  "\\Elzinglst ": '\u0296'
  "{\\textturnk}": '\u029E'
  "\\textturnk ": '\u029E'
  "{\\Elzdyogh}": '\u02A4'
  "\\Elzdyogh ": '\u02A4'
  "{\\Elztesh}": '\u02A7'
  "\\Elztesh ": '\u02A7'
  "'": '\u02BC'
  "{\\textasciicaron}": '\u02C7'
  "\\textasciicaron ": '\u02C7'
  "{\\Elzverts}": '\u02C8'
  "\\Elzverts ": '\u02C8'
  "{\\Elzverti}": '\u02CC'
  "\\Elzverti ": '\u02CC'
  "{\\Elzlmrk}": '\u02D0'
  "\\Elzlmrk ": '\u02D0'
  "{\\Elzhlmrk}": '\u02D1'
  "\\Elzhlmrk ": '\u02D1'
  "{\\Elzsbrhr}": '\u02D2'
  "\\Elzsbrhr ": '\u02D2'
  "{\\Elzsblhr}": '\u02D3'
  "\\Elzsblhr ": '\u02D3'
  "{\\Elzrais}": '\u02D4'
  "\\Elzrais ": '\u02D4'
  "{\\Elzlow}": '\u02D5'
  "\\Elzlow ": '\u02D5'
  "{\\textasciibreve}": '\u02D8'
  "\\textasciibreve ": '\u02D8'
  "{\\textperiodcentered}": '\u02D9'
  "\\textperiodcentered ": '\u02D9'
  "\\r{}": '\u02DA'
  "\\k{}": '\u02DB'
  "{\\texttildelow}": '\u02DC'
  "\\texttildelow ": '\u02DC'
  "\\H{}": '\u02DD'
  "\\tone{55}": '\u02E5'
  "\\tone{44}": '\u02E6'
  "\\tone{33}": '\u02E7'
  "\\tone{22}": '\u02E8'
  "\\tone{11}": '\u02E9'
  "\\`": '\u0300'
  "\\'": '\u0301'
  "\\^": '\u0302'
  "\\~": '\u0303'
  "\\=": '\u0304'
  "\\u": '\u0306'
  "\\.": '\u0307'
  "\\\"": '\u0308'
  "\\r": '\u030A'
  "\\H": '\u030B'
  "\\v": '\u030C'
  "\\cyrchar\\C": '\u030F'
  "{\\fontencoding{LECO}\\selectfont\\char177}": '\u0311'
  "{\\fontencoding{LECO}\\selectfont\\char184}": '\u0318'
  "{\\fontencoding{LECO}\\selectfont\\char185}": '\u0319'
  "{\\Elzpalh}": '\u0321'
  "\\Elzpalh ": '\u0321'
  "{\\Elzrh}": '\u0322'
  "\\Elzrh ": '\u0322'
  "\\c": '\u0327'
  "\\k": '\u0328'
  "{\\Elzsbbrg}": '\u032A'
  "\\Elzsbbrg ": '\u032A'
  "{\\fontencoding{LECO}\\selectfont\\char203}": '\u032B'
  "{\\fontencoding{LECO}\\selectfont\\char207}": '\u032F'
  "{\\Elzxl}": '\u0335'
  "\\Elzxl ": '\u0335'
  "{\\Elzbar}": '\u0336'
  "\\Elzbar ": '\u0336'
  "{\\fontencoding{LECO}\\selectfont\\char215}": '\u0337'
  "{\\fontencoding{LECO}\\selectfont\\char216}": '\u0338'
  "{\\fontencoding{LECO}\\selectfont\\char218}": '\u033A'
  "{\\fontencoding{LECO}\\selectfont\\char219}": '\u033B'
  "{\\fontencoding{LECO}\\selectfont\\char220}": '\u033C'
  "{\\fontencoding{LECO}\\selectfont\\char221}": '\u033D'
  "{\\fontencoding{LECO}\\selectfont\\char225}": '\u0361'
  "{\\'H}": '\u0389'
  "\\'{}{I}": '\u038A'
  "\\'{}O": '\u038C'
  "\\mathrm{'Y}": '\u038E'
  "\\mathrm{'\\Omega}": '\u038F'
  "\\acute{\\ddot{\\iota}}": '\u0390'
  "{\\Alpha}": '\u0391'
  "\\Alpha ": '\u0391'
  "{\\Beta}": '\u0392'
  "\\Beta ": '\u0392'
  "{\\Gamma}": '\u0393'
  "\\Gamma ": '\u0393'
  "{\\Delta}": '\u0394'
  "\\Delta ": '\u0394'
  "{\\Epsilon}": '\u0395'
  "\\Epsilon ": '\u0395'
  "{\\Zeta}": '\u0396'
  "\\Zeta ": '\u0396'
  "{\\Eta}": '\u0397'
  "\\Eta ": '\u0397'
  "{\\Theta}": '\u0398'
  "\\Theta ": '\u0398'
  "{\\Iota}": '\u0399'
  "\\Iota ": '\u0399'
  "{\\Kappa}": '\u039A'
  "\\Kappa ": '\u039A'
  "{\\Lambda}": '\u039B'
  "\\Lambda ": '\u039B'
  "{\\Xi}": '\u039E'
  "\\Xi ": '\u039E'
  "{\\Pi}": '\u03A0'
  "\\Pi ": '\u03A0'
  "{\\Rho}": '\u03A1'
  "\\Rho ": '\u03A1'
  "{\\Sigma}": '\u03A3'
  "\\Sigma ": '\u03A3'
  "{\\Tau}": '\u03A4'
  "\\Tau ": '\u03A4'
  "{\\Upsilon}": '\u03A5'
  "\\Upsilon ": '\u03A5'
  "{\\Phi}": '\u03A6'
  "\\Phi ": '\u03A6'
  "{\\Chi}": '\u03A7'
  "\\Chi ": '\u03A7'
  "{\\Psi}": '\u03A8'
  "\\Psi ": '\u03A8'
  "{\\Omega}": '\u03A9'
  "\\Omega ": '\u03A9'
  "\\mathrm{\\ddot{I}}": '\u03AA'
  "\\mathrm{\\ddot{Y}}": '\u03AB'
  "{\\'$\\alpha$}": '\u03AC'
  "\\acute{\\epsilon}": '\u03AD'
  "\\acute{\\eta}": '\u03AE'
  "\\acute{\\iota}": '\u03AF'
  "\\acute{\\ddot{\\upsilon}}": '\u03B0'
  "{\\alpha}": '\u03B1'
  "\\alpha ": '\u03B1'
  "{\\beta}": '\u03B2'
  "\\beta ": '\u03B2'
  "{\\gamma}": '\u03B3'
  "\\gamma ": '\u03B3'
  "{\\delta}": '\u03B4'
  "\\delta ": '\u03B4'
  "{\\epsilon}": '\u03B5'
  "\\epsilon ": '\u03B5'
  "{\\zeta}": '\u03B6'
  "\\zeta ": '\u03B6'
  "{\\eta}": '\u03B7'
  "\\eta ": '\u03B7'
  "{\\texttheta}": '\u03B8'
  "\\texttheta ": '\u03B8'
  "{\\iota}": '\u03B9'
  "\\iota ": '\u03B9'
  "{\\kappa}": '\u03BA'
  "\\kappa ": '\u03BA'
  "{\\lambda}": '\u03BB'
  "\\lambda ": '\u03BB'
  "{\\mu}": '\u03BC'
  "\\mu ": '\u03BC'
  "{\\nu}": '\u03BD'
  "\\nu ": '\u03BD'
  "{\\xi}": '\u03BE'
  "\\xi ": '\u03BE'
  "{\\pi}": '\u03C0'
  "\\pi ": '\u03C0'
  "{\\rho}": '\u03C1'
  "\\rho ": '\u03C1'
  "{\\varsigma}": '\u03C2'
  "\\varsigma ": '\u03C2'
  "{\\sigma}": '\u03C3'
  "\\sigma ": '\u03C3'
  "{\\tau}": '\u03C4'
  "\\tau ": '\u03C4'
  "{\\upsilon}": '\u03C5'
  "\\upsilon ": '\u03C5'
  "{\\varphi}": '\u03C6'
  "\\varphi ": '\u03C6'
  "{\\chi}": '\u03C7'
  "\\chi ": '\u03C7'
  "{\\psi}": '\u03C8'
  "\\psi ": '\u03C8'
  "{\\omega}": '\u03C9'
  "\\omega ": '\u03C9'
  "\\ddot{\\iota}": '\u03CA'
  "\\ddot{\\upsilon}": '\u03CB'
  "\\acute{\\upsilon}": '\u03CD'
  "\\acute{\\omega}": '\u03CE'
  "\\Pisymbol{ppi022}{87}": '\u03D0'
  "{\\textvartheta}": '\u03D1'
  "\\textvartheta ": '\u03D1'
  "{\\phi}": '\u03D5'
  "\\phi ": '\u03D5'
  "{\\varpi}": '\u03D6'
  "\\varpi ": '\u03D6'
  "{\\Stigma}": '\u03DA'
  "\\Stigma ": '\u03DA'
  "{\\Digamma}": '\u03DC'
  "\\Digamma ": '\u03DC'
  "{\\digamma}": '\u03DD'
  "\\digamma ": '\u03DD'
  "{\\Koppa}": '\u03DE'
  "\\Koppa ": '\u03DE'
  "{\\Sampi}": '\u03E0'
  "\\Sampi ": '\u03E0'
  "{\\varkappa}": '\u03F0'
  "\\varkappa ": '\u03F0'
  "{\\varrho}": '\u03F1'
  "\\varrho ": '\u03F1'
  "{\\textTheta}": '\u03F4'
  "\\textTheta ": '\u03F4'
  "{\\backepsilon}": '\u03F6'
  "\\backepsilon ": '\u03F6'
  "{\\cyrchar\\CYRYO}": '\u0401'
  "\\cyrchar\\CYRYO ": '\u0401'
  "{\\cyrchar\\CYRDJE}": '\u0402'
  "\\cyrchar\\CYRDJE ": '\u0402'
  "\\cyrchar{\\'\\CYRG}": '\u0403'
  "{\\cyrchar\\CYRIE}": '\u0404'
  "\\cyrchar\\CYRIE ": '\u0404'
  "{\\cyrchar\\CYRDZE}": '\u0405'
  "\\cyrchar\\CYRDZE ": '\u0405'
  "{\\cyrchar\\CYRII}": '\u0406'
  "\\cyrchar\\CYRII ": '\u0406'
  "{\\cyrchar\\CYRYI}": '\u0407'
  "\\cyrchar\\CYRYI ": '\u0407'
  "{\\cyrchar\\CYRJE}": '\u0408'
  "\\cyrchar\\CYRJE ": '\u0408'
  "{\\cyrchar\\CYRLJE}": '\u0409'
  "\\cyrchar\\CYRLJE ": '\u0409'
  "{\\cyrchar\\CYRNJE}": '\u040A'
  "\\cyrchar\\CYRNJE ": '\u040A'
  "{\\cyrchar\\CYRTSHE}": '\u040B'
  "\\cyrchar\\CYRTSHE ": '\u040B'
  "\\cyrchar{\\'\\CYRK}": '\u040C'
  "{\\cyrchar\\CYRUSHRT}": '\u040E'
  "\\cyrchar\\CYRUSHRT ": '\u040E'
  "{\\cyrchar\\CYRDZHE}": '\u040F'
  "\\cyrchar\\CYRDZHE ": '\u040F'
  "{\\cyrchar\\CYRA}": '\u0410'
  "\\cyrchar\\CYRA ": '\u0410'
  "{\\cyrchar\\CYRB}": '\u0411'
  "\\cyrchar\\CYRB ": '\u0411'
  "{\\cyrchar\\CYRV}": '\u0412'
  "\\cyrchar\\CYRV ": '\u0412'
  "{\\cyrchar\\CYRG}": '\u0413'
  "\\cyrchar\\CYRG ": '\u0413'
  "{\\cyrchar\\CYRD}": '\u0414'
  "\\cyrchar\\CYRD ": '\u0414'
  "{\\cyrchar\\CYRE}": '\u0415'
  "\\cyrchar\\CYRE ": '\u0415'
  "{\\cyrchar\\CYRZH}": '\u0416'
  "\\cyrchar\\CYRZH ": '\u0416'
  "{\\cyrchar\\CYRZ}": '\u0417'
  "\\cyrchar\\CYRZ ": '\u0417'
  "{\\cyrchar\\CYRI}": '\u0418'
  "\\cyrchar\\CYRI ": '\u0418'
  "{\\cyrchar\\CYRISHRT}": '\u0419'
  "\\cyrchar\\CYRISHRT ": '\u0419'
  "{\\cyrchar\\CYRK}": '\u041A'
  "\\cyrchar\\CYRK ": '\u041A'
  "{\\cyrchar\\CYRL}": '\u041B'
  "\\cyrchar\\CYRL ": '\u041B'
  "{\\cyrchar\\CYRM}": '\u041C'
  "\\cyrchar\\CYRM ": '\u041C'
  "{\\cyrchar\\CYRN}": '\u041D'
  "\\cyrchar\\CYRN ": '\u041D'
  "{\\cyrchar\\CYRO}": '\u041E'
  "\\cyrchar\\CYRO ": '\u041E'
  "{\\cyrchar\\CYRP}": '\u041F'
  "\\cyrchar\\CYRP ": '\u041F'
  "{\\cyrchar\\CYRR}": '\u0420'
  "\\cyrchar\\CYRR ": '\u0420'
  "{\\cyrchar\\CYRS}": '\u0421'
  "\\cyrchar\\CYRS ": '\u0421'
  "{\\cyrchar\\CYRT}": '\u0422'
  "\\cyrchar\\CYRT ": '\u0422'
  "{\\cyrchar\\CYRU}": '\u0423'
  "\\cyrchar\\CYRU ": '\u0423'
  "{\\cyrchar\\CYRF}": '\u0424'
  "\\cyrchar\\CYRF ": '\u0424'
  "{\\cyrchar\\CYRH}": '\u0425'
  "\\cyrchar\\CYRH ": '\u0425'
  "{\\cyrchar\\CYRC}": '\u0426'
  "\\cyrchar\\CYRC ": '\u0426'
  "{\\cyrchar\\CYRCH}": '\u0427'
  "\\cyrchar\\CYRCH ": '\u0427'
  "{\\cyrchar\\CYRSH}": '\u0428'
  "\\cyrchar\\CYRSH ": '\u0428'
  "{\\cyrchar\\CYRSHCH}": '\u0429'
  "\\cyrchar\\CYRSHCH ": '\u0429'
  "{\\cyrchar\\CYRHRDSN}": '\u042A'
  "\\cyrchar\\CYRHRDSN ": '\u042A'
  "{\\cyrchar\\CYRERY}": '\u042B'
  "\\cyrchar\\CYRERY ": '\u042B'
  "{\\cyrchar\\CYRSFTSN}": '\u042C'
  "\\cyrchar\\CYRSFTSN ": '\u042C'
  "{\\cyrchar\\CYREREV}": '\u042D'
  "\\cyrchar\\CYREREV ": '\u042D'
  "{\\cyrchar\\CYRYU}": '\u042E'
  "\\cyrchar\\CYRYU ": '\u042E'
  "{\\cyrchar\\CYRYA}": '\u042F'
  "\\cyrchar\\CYRYA ": '\u042F'
  "{\\cyrchar\\cyra}": '\u0430'
  "\\cyrchar\\cyra ": '\u0430'
  "{\\cyrchar\\cyrb}": '\u0431'
  "\\cyrchar\\cyrb ": '\u0431'
  "{\\cyrchar\\cyrv}": '\u0432'
  "\\cyrchar\\cyrv ": '\u0432'
  "{\\cyrchar\\cyrg}": '\u0433'
  "\\cyrchar\\cyrg ": '\u0433'
  "{\\cyrchar\\cyrd}": '\u0434'
  "\\cyrchar\\cyrd ": '\u0434'
  "{\\cyrchar\\cyre}": '\u0435'
  "\\cyrchar\\cyre ": '\u0435'
  "{\\cyrchar\\cyrzh}": '\u0436'
  "\\cyrchar\\cyrzh ": '\u0436'
  "{\\cyrchar\\cyrz}": '\u0437'
  "\\cyrchar\\cyrz ": '\u0437'
  "{\\cyrchar\\cyri}": '\u0438'
  "\\cyrchar\\cyri ": '\u0438'
  "{\\cyrchar\\cyrishrt}": '\u0439'
  "\\cyrchar\\cyrishrt ": '\u0439'
  "{\\cyrchar\\cyrk}": '\u043A'
  "\\cyrchar\\cyrk ": '\u043A'
  "{\\cyrchar\\cyrl}": '\u043B'
  "\\cyrchar\\cyrl ": '\u043B'
  "{\\cyrchar\\cyrm}": '\u043C'
  "\\cyrchar\\cyrm ": '\u043C'
  "{\\cyrchar\\cyrn}": '\u043D'
  "\\cyrchar\\cyrn ": '\u043D'
  "{\\cyrchar\\cyro}": '\u043E'
  "\\cyrchar\\cyro ": '\u043E'
  "{\\cyrchar\\cyrp}": '\u043F'
  "\\cyrchar\\cyrp ": '\u043F'
  "{\\cyrchar\\cyrr}": '\u0440'
  "\\cyrchar\\cyrr ": '\u0440'
  "{\\cyrchar\\cyrs}": '\u0441'
  "\\cyrchar\\cyrs ": '\u0441'
  "{\\cyrchar\\cyrt}": '\u0442'
  "\\cyrchar\\cyrt ": '\u0442'
  "{\\cyrchar\\cyru}": '\u0443'
  "\\cyrchar\\cyru ": '\u0443'
  "{\\cyrchar\\cyrf}": '\u0444'
  "\\cyrchar\\cyrf ": '\u0444'
  "{\\cyrchar\\cyrh}": '\u0445'
  "\\cyrchar\\cyrh ": '\u0445'
  "{\\cyrchar\\cyrc}": '\u0446'
  "\\cyrchar\\cyrc ": '\u0446'
  "{\\cyrchar\\cyrch}": '\u0447'
  "\\cyrchar\\cyrch ": '\u0447'
  "{\\cyrchar\\cyrsh}": '\u0448'
  "\\cyrchar\\cyrsh ": '\u0448'
  "{\\cyrchar\\cyrshch}": '\u0449'
  "\\cyrchar\\cyrshch ": '\u0449'
  "{\\cyrchar\\cyrhrdsn}": '\u044A'
  "\\cyrchar\\cyrhrdsn ": '\u044A'
  "{\\cyrchar\\cyrery}": '\u044B'
  "\\cyrchar\\cyrery ": '\u044B'
  "{\\cyrchar\\cyrsftsn}": '\u044C'
  "\\cyrchar\\cyrsftsn ": '\u044C'
  "{\\cyrchar\\cyrerev}": '\u044D'
  "\\cyrchar\\cyrerev ": '\u044D'
  "{\\cyrchar\\cyryu}": '\u044E'
  "\\cyrchar\\cyryu ": '\u044E'
  "{\\cyrchar\\cyrya}": '\u044F'
  "\\cyrchar\\cyrya ": '\u044F'
  "{\\cyrchar\\cyryo}": '\u0451'
  "\\cyrchar\\cyryo ": '\u0451'
  "{\\cyrchar\\cyrdje}": '\u0452'
  "\\cyrchar\\cyrdje ": '\u0452'
  "\\cyrchar{\\'\\cyrg}": '\u0453'
  "{\\cyrchar\\cyrie}": '\u0454'
  "\\cyrchar\\cyrie ": '\u0454'
  "{\\cyrchar\\cyrdze}": '\u0455'
  "\\cyrchar\\cyrdze ": '\u0455'
  "{\\cyrchar\\cyrii}": '\u0456'
  "\\cyrchar\\cyrii ": '\u0456'
  "{\\cyrchar\\cyryi}": '\u0457'
  "\\cyrchar\\cyryi ": '\u0457'
  "{\\cyrchar\\cyrje}": '\u0458'
  "\\cyrchar\\cyrje ": '\u0458'
  "{\\cyrchar\\cyrlje}": '\u0459'
  "\\cyrchar\\cyrlje ": '\u0459'
  "{\\cyrchar\\cyrnje}": '\u045A'
  "\\cyrchar\\cyrnje ": '\u045A'
  "{\\cyrchar\\cyrtshe}": '\u045B'
  "\\cyrchar\\cyrtshe ": '\u045B'
  "\\cyrchar{\\'\\cyrk}": '\u045C'
  "{\\cyrchar\\cyrushrt}": '\u045E'
  "\\cyrchar\\cyrushrt ": '\u045E'
  "{\\cyrchar\\cyrdzhe}": '\u045F'
  "\\cyrchar\\cyrdzhe ": '\u045F'
  "{\\cyrchar\\CYROMEGA}": '\u0460'
  "\\cyrchar\\CYROMEGA ": '\u0460'
  "{\\cyrchar\\cyromega}": '\u0461'
  "\\cyrchar\\cyromega ": '\u0461'
  "{\\cyrchar\\CYRYAT}": '\u0462'
  "\\cyrchar\\CYRYAT ": '\u0462'
  "{\\cyrchar\\CYRIOTE}": '\u0464'
  "\\cyrchar\\CYRIOTE ": '\u0464'
  "{\\cyrchar\\cyriote}": '\u0465'
  "\\cyrchar\\cyriote ": '\u0465'
  "{\\cyrchar\\CYRLYUS}": '\u0466'
  "\\cyrchar\\CYRLYUS ": '\u0466'
  "{\\cyrchar\\cyrlyus}": '\u0467'
  "\\cyrchar\\cyrlyus ": '\u0467'
  "{\\cyrchar\\CYRIOTLYUS}": '\u0468'
  "\\cyrchar\\CYRIOTLYUS ": '\u0468'
  "{\\cyrchar\\cyriotlyus}": '\u0469'
  "\\cyrchar\\cyriotlyus ": '\u0469'
  "{\\cyrchar\\CYRBYUS}": '\u046A'
  "\\cyrchar\\CYRBYUS ": '\u046A'
  "{\\cyrchar\\CYRIOTBYUS}": '\u046C'
  "\\cyrchar\\CYRIOTBYUS ": '\u046C'
  "{\\cyrchar\\cyriotbyus}": '\u046D'
  "\\cyrchar\\cyriotbyus ": '\u046D'
  "{\\cyrchar\\CYRKSI}": '\u046E'
  "\\cyrchar\\CYRKSI ": '\u046E'
  "{\\cyrchar\\cyrksi}": '\u046F'
  "\\cyrchar\\cyrksi ": '\u046F'
  "{\\cyrchar\\CYRPSI}": '\u0470'
  "\\cyrchar\\CYRPSI ": '\u0470'
  "{\\cyrchar\\cyrpsi}": '\u0471'
  "\\cyrchar\\cyrpsi ": '\u0471'
  "{\\cyrchar\\CYRFITA}": '\u0472'
  "\\cyrchar\\CYRFITA ": '\u0472'
  "{\\cyrchar\\CYRIZH}": '\u0474'
  "\\cyrchar\\CYRIZH ": '\u0474'
  "{\\cyrchar\\CYRUK}": '\u0478'
  "\\cyrchar\\CYRUK ": '\u0478'
  "{\\cyrchar\\cyruk}": '\u0479'
  "\\cyrchar\\cyruk ": '\u0479'
  "{\\cyrchar\\CYROMEGARND}": '\u047A'
  "\\cyrchar\\CYROMEGARND ": '\u047A'
  "{\\cyrchar\\cyromegarnd}": '\u047B'
  "\\cyrchar\\cyromegarnd ": '\u047B'
  "{\\cyrchar\\CYROMEGATITLO}": '\u047C'
  "\\cyrchar\\CYROMEGATITLO ": '\u047C'
  "{\\cyrchar\\cyromegatitlo}": '\u047D'
  "\\cyrchar\\cyromegatitlo ": '\u047D'
  "{\\cyrchar\\CYROT}": '\u047E'
  "\\cyrchar\\CYROT ": '\u047E'
  "{\\cyrchar\\cyrot}": '\u047F'
  "\\cyrchar\\cyrot ": '\u047F'
  "{\\cyrchar\\CYRKOPPA}": '\u0480'
  "\\cyrchar\\CYRKOPPA ": '\u0480'
  "{\\cyrchar\\cyrkoppa}": '\u0481'
  "\\cyrchar\\cyrkoppa ": '\u0481'
  "{\\cyrchar\\cyrthousands}": '\u0482'
  "\\cyrchar\\cyrthousands ": '\u0482'
  "{\\cyrchar\\cyrhundredthousands}": '\u0488'
  "\\cyrchar\\cyrhundredthousands ": '\u0488'
  "{\\cyrchar\\cyrmillions}": '\u0489'
  "\\cyrchar\\cyrmillions ": '\u0489'
  "{\\cyrchar\\CYRSEMISFTSN}": '\u048C'
  "\\cyrchar\\CYRSEMISFTSN ": '\u048C'
  "{\\cyrchar\\cyrsemisftsn}": '\u048D'
  "\\cyrchar\\cyrsemisftsn ": '\u048D'
  "{\\cyrchar\\CYRRTICK}": '\u048E'
  "\\cyrchar\\CYRRTICK ": '\u048E'
  "{\\cyrchar\\cyrrtick}": '\u048F'
  "\\cyrchar\\cyrrtick ": '\u048F'
  "{\\cyrchar\\CYRGUP}": '\u0490'
  "\\cyrchar\\CYRGUP ": '\u0490'
  "{\\cyrchar\\cyrgup}": '\u0491'
  "\\cyrchar\\cyrgup ": '\u0491'
  "{\\cyrchar\\CYRGHCRS}": '\u0492'
  "\\cyrchar\\CYRGHCRS ": '\u0492'
  "{\\cyrchar\\cyrghcrs}": '\u0493'
  "\\cyrchar\\cyrghcrs ": '\u0493'
  "{\\cyrchar\\CYRGHK}": '\u0494'
  "\\cyrchar\\CYRGHK ": '\u0494'
  "{\\cyrchar\\cyrghk}": '\u0495'
  "\\cyrchar\\cyrghk ": '\u0495'
  "{\\cyrchar\\CYRZHDSC}": '\u0496'
  "\\cyrchar\\CYRZHDSC ": '\u0496'
  "{\\cyrchar\\cyrzhdsc}": '\u0497'
  "\\cyrchar\\cyrzhdsc ": '\u0497'
  "{\\cyrchar\\CYRZDSC}": '\u0498'
  "\\cyrchar\\CYRZDSC ": '\u0498'
  "{\\cyrchar\\cyrzdsc}": '\u0499'
  "\\cyrchar\\cyrzdsc ": '\u0499'
  "{\\cyrchar\\CYRKDSC}": '\u049A'
  "\\cyrchar\\CYRKDSC ": '\u049A'
  "{\\cyrchar\\cyrkdsc}": '\u049B'
  "\\cyrchar\\cyrkdsc ": '\u049B'
  "{\\cyrchar\\CYRKVCRS}": '\u049C'
  "\\cyrchar\\CYRKVCRS ": '\u049C'
  "{\\cyrchar\\cyrkvcrs}": '\u049D'
  "\\cyrchar\\cyrkvcrs ": '\u049D'
  "{\\cyrchar\\CYRKHCRS}": '\u049E'
  "\\cyrchar\\CYRKHCRS ": '\u049E'
  "{\\cyrchar\\cyrkhcrs}": '\u049F'
  "\\cyrchar\\cyrkhcrs ": '\u049F'
  "{\\cyrchar\\CYRKBEAK}": '\u04A0'
  "\\cyrchar\\CYRKBEAK ": '\u04A0'
  "{\\cyrchar\\cyrkbeak}": '\u04A1'
  "\\cyrchar\\cyrkbeak ": '\u04A1'
  "{\\cyrchar\\CYRNDSC}": '\u04A2'
  "\\cyrchar\\CYRNDSC ": '\u04A2'
  "{\\cyrchar\\cyrndsc}": '\u04A3'
  "\\cyrchar\\cyrndsc ": '\u04A3'
  "{\\cyrchar\\CYRNG}": '\u04A4'
  "\\cyrchar\\CYRNG ": '\u04A4'
  "{\\cyrchar\\cyrng}": '\u04A5'
  "\\cyrchar\\cyrng ": '\u04A5'
  "{\\cyrchar\\CYRPHK}": '\u04A6'
  "\\cyrchar\\CYRPHK ": '\u04A6'
  "{\\cyrchar\\cyrphk}": '\u04A7'
  "\\cyrchar\\cyrphk ": '\u04A7'
  "{\\cyrchar\\CYRABHHA}": '\u04A8'
  "\\cyrchar\\CYRABHHA ": '\u04A8'
  "{\\cyrchar\\cyrabhha}": '\u04A9'
  "\\cyrchar\\cyrabhha ": '\u04A9'
  "{\\cyrchar\\CYRSDSC}": '\u04AA'
  "\\cyrchar\\CYRSDSC ": '\u04AA'
  "{\\cyrchar\\cyrsdsc}": '\u04AB'
  "\\cyrchar\\cyrsdsc ": '\u04AB'
  "{\\cyrchar\\CYRTDSC}": '\u04AC'
  "\\cyrchar\\CYRTDSC ": '\u04AC'
  "{\\cyrchar\\cyrtdsc}": '\u04AD'
  "\\cyrchar\\cyrtdsc ": '\u04AD'
  "{\\cyrchar\\CYRY}": '\u04AE'
  "\\cyrchar\\CYRY ": '\u04AE'
  "{\\cyrchar\\cyry}": '\u04AF'
  "\\cyrchar\\cyry ": '\u04AF'
  "{\\cyrchar\\CYRYHCRS}": '\u04B0'
  "\\cyrchar\\CYRYHCRS ": '\u04B0'
  "{\\cyrchar\\cyryhcrs}": '\u04B1'
  "\\cyrchar\\cyryhcrs ": '\u04B1'
  "{\\cyrchar\\CYRHDSC}": '\u04B2'
  "\\cyrchar\\CYRHDSC ": '\u04B2'
  "{\\cyrchar\\cyrhdsc}": '\u04B3'
  "\\cyrchar\\cyrhdsc ": '\u04B3'
  "{\\cyrchar\\CYRTETSE}": '\u04B4'
  "\\cyrchar\\CYRTETSE ": '\u04B4'
  "{\\cyrchar\\cyrtetse}": '\u04B5'
  "\\cyrchar\\cyrtetse ": '\u04B5'
  "{\\cyrchar\\CYRCHRDSC}": '\u04B6'
  "\\cyrchar\\CYRCHRDSC ": '\u04B6'
  "{\\cyrchar\\cyrchrdsc}": '\u04B7'
  "\\cyrchar\\cyrchrdsc ": '\u04B7'
  "{\\cyrchar\\CYRCHVCRS}": '\u04B8'
  "\\cyrchar\\CYRCHVCRS ": '\u04B8'
  "{\\cyrchar\\cyrchvcrs}": '\u04B9'
  "\\cyrchar\\cyrchvcrs ": '\u04B9'
  "{\\cyrchar\\CYRSHHA}": '\u04BA'
  "\\cyrchar\\CYRSHHA ": '\u04BA'
  "{\\cyrchar\\cyrshha}": '\u04BB'
  "\\cyrchar\\cyrshha ": '\u04BB'
  "{\\cyrchar\\CYRABHCH}": '\u04BC'
  "\\cyrchar\\CYRABHCH ": '\u04BC'
  "{\\cyrchar\\cyrabhch}": '\u04BD'
  "\\cyrchar\\cyrabhch ": '\u04BD'
  "{\\cyrchar\\CYRABHCHDSC}": '\u04BE'
  "\\cyrchar\\CYRABHCHDSC ": '\u04BE'
  "{\\cyrchar\\cyrabhchdsc}": '\u04BF'
  "\\cyrchar\\cyrabhchdsc ": '\u04BF'
  "{\\cyrchar\\CYRpalochka}": '\u04C0'
  "\\cyrchar\\CYRpalochka ": '\u04C0'
  "{\\cyrchar\\CYRKHK}": '\u04C3'
  "\\cyrchar\\CYRKHK ": '\u04C3'
  "{\\cyrchar\\cyrkhk}": '\u04C4'
  "\\cyrchar\\cyrkhk ": '\u04C4'
  "{\\cyrchar\\CYRNHK}": '\u04C7'
  "\\cyrchar\\CYRNHK ": '\u04C7'
  "{\\cyrchar\\cyrnhk}": '\u04C8'
  "\\cyrchar\\cyrnhk ": '\u04C8'
  "{\\cyrchar\\CYRCHLDSC}": '\u04CB'
  "\\cyrchar\\CYRCHLDSC ": '\u04CB'
  "{\\cyrchar\\cyrchldsc}": '\u04CC'
  "\\cyrchar\\cyrchldsc ": '\u04CC'
  "{\\cyrchar\\CYRAE}": '\u04D4'
  "\\cyrchar\\CYRAE ": '\u04D4'
  "{\\cyrchar\\cyrae}": '\u04D5'
  "\\cyrchar\\cyrae ": '\u04D5'
  "{\\cyrchar\\CYRSCHWA}": '\u04D8'
  "\\cyrchar\\CYRSCHWA ": '\u04D8'
  "{\\cyrchar\\cyrschwa}": '\u04D9'
  "\\cyrchar\\cyrschwa ": '\u04D9'
  "{\\cyrchar\\CYRABHDZE}": '\u04E0'
  "\\cyrchar\\CYRABHDZE ": '\u04E0'
  "{\\cyrchar\\cyrabhdze}": '\u04E1'
  "\\cyrchar\\cyrabhdze ": '\u04E1'
  "{\\cyrchar\\CYROTLD}": '\u04E8'
  "\\cyrchar\\CYROTLD ": '\u04E8'
  "{\\cyrchar\\cyrotld}": '\u04E9'
  "\\cyrchar\\cyrotld ": '\u04E9'
  "\\hspace{0.6em}": '\u2002'
  "\\hspace{1em}": '\u2003'
  "\\hspace{0.33em}": '\u2004'
  "\\hspace{0.25em}": '\u2005'
  "\\hspace{0.166em}": '\u2006'
  "\\hphantom{0}": '\u2007'
  "\\hphantom{,}": '\u2008'
  "\\hspace{0.167em}": '\u2009'
  "{\\mkern1mu}": '\u200A'
  "\\mkern1mu ": '\u200A'
  "-": '\u2010'
  "{\\textendash}": '\u2013'
  "\\textendash ": '\u2013'
  "{\\textemdash}": '\u2014'
  "\\textemdash ": '\u2014'
  "\\rule{1em}{1pt}": '\u2015'
  "{\\Vert}": '\u2016'
  "\\Vert ": '\u2016'
  "`": '\u2018'
  ",": '\u201A'
  "{\\Elzreapos}": '\u201B'
  "\\Elzreapos ": '\u201B'
  "{\\textquotedblleft}": '\u201C'
  "\\textquotedblleft ": '\u201C'
  "{\\textquotedblright}": '\u201D'
  "\\textquotedblright ": '\u201D'
  ",,": '\u201E'
  "{\\textdagger}": '\u2020'
  "\\textdagger ": '\u2020'
  "{\\textdaggerdbl}": '\u2021'
  "\\textdaggerdbl ": '\u2021'
  "{\\textbullet}": '\u2022'
  "\\textbullet ": '\u2022'
  ".": '\u2024'
  "..": '\u2025'
  "{\\ldots}": '\u2026'
  "\\ldots ": '\u2026'
  "{\\textperthousand}": '\u2030'
  "\\textperthousand ": '\u2030'
  "{\\textpertenthousand}": '\u2031'
  "\\textpertenthousand ": '\u2031'
  "{'}": '\u2032'
  "{''}": '\u2033'
  "{'''}": '\u2034'
  "{\\backprime}": '\u2035'
  "\\backprime ": '\u2035'
  "{\\guilsinglleft}": '\u2039'
  "\\guilsinglleft ": '\u2039'
  "{\\guilsinglright}": '\u203A'
  "\\guilsinglright ": '\u203A'
  "''''": '\u2057'
  "{\\mkern4mu}": '\u205F'
  "\\mkern4mu ": '\u205F'
  "{\\nolinebreak}": '\u2060'
  "\\nolinebreak ": '\u2060'
  "\\ensuremath{\\Elzpes}": '\u20A7'
  "{\\mbox{\\texteuro}}": '\u20AC'
  "\\mbox{\\texteuro} ": '\u20AC'
  "{\\dddot}": '\u20DB'
  "\\dddot ": '\u20DB'
  "{\\ddddot}": '\u20DC'
  "\\ddddot ": '\u20DC'
  "\\mathbb{C}": '\u2102'
  "\\mathscr{g}": '\u210A'
  "\\mathscr{H}": '\u210B'
  "\\mathfrak{H}": '\u210C'
  "\\mathbb{H}": '\u210D'
  "{\\hslash}": '\u210F'
  "\\hslash ": '\u210F'
  "\\mathscr{I}": '\u2110'
  "\\mathfrak{I}": '\u2111'
  "\\mathscr{L}": '\u2112'
  "\\mathscr{l}": '\u2113'
  "\\mathbb{N}": '\u2115'
  "{\\cyrchar\\textnumero}": '\u2116'
  "\\cyrchar\\textnumero ": '\u2116'
  "{\\wp}": '\u2118'
  "\\wp ": '\u2118'
  "\\mathbb{P}": '\u2119'
  "\\mathbb{Q}": '\u211A'
  "\\mathscr{R}": '\u211B'
  "\\mathfrak{R}": '\u211C'
  "\\mathbb{R}": '\u211D'
  "{\\Elzxrat}": '\u211E'
  "\\Elzxrat ": '\u211E'
  "{\\texttrademark}": '\u2122'
  "\\texttrademark ": '\u2122'
  "\\mathbb{Z}": '\u2124'
  "{\\mho}": '\u2127'
  "\\mho ": '\u2127'
  "\\mathfrak{Z}": '\u2128'
  "\\ElsevierGlyph{2129}": '\u2129'
  "\\mathscr{B}": '\u212C'
  "\\mathfrak{C}": '\u212D'
  "\\mathscr{e}": '\u212F'
  "\\mathscr{E}": '\u2130'
  "\\mathscr{F}": '\u2131'
  "\\mathscr{M}": '\u2133'
  "\\mathscr{o}": '\u2134'
  "{\\aleph}": '\u2135'
  "\\aleph ": '\u2135'
  "{\\beth}": '\u2136'
  "\\beth ": '\u2136'
  "{\\gimel}": '\u2137'
  "\\gimel ": '\u2137'
  "{\\daleth}": '\u2138'
  "\\daleth ": '\u2138'
  "\\textfrac{1}{3}": '\u2153'
  "\\textfrac{2}{3}": '\u2154'
  "\\textfrac{1}{5}": '\u2155'
  "\\textfrac{2}{5}": '\u2156'
  "\\textfrac{3}{5}": '\u2157'
  "\\textfrac{4}{5}": '\u2158'
  "\\textfrac{1}{6}": '\u2159'
  "\\textfrac{5}{6}": '\u215A'
  "\\textfrac{1}{8}": '\u215B'
  "\\textfrac{3}{8}": '\u215C'
  "\\textfrac{5}{8}": '\u215D'
  "\\textfrac{7}{8}": '\u215E'
  "{\\leftarrow}": '\u2190'
  "\\leftarrow ": '\u2190'
  "{\\uparrow}": '\u2191'
  "\\uparrow ": '\u2191'
  "{\\rightarrow}": '\u2192'
  "\\rightarrow ": '\u2192'
  "{\\downarrow}": '\u2193'
  "\\downarrow ": '\u2193'
  "{\\leftrightarrow}": '\u2194'
  "\\leftrightarrow ": '\u2194'
  "{\\updownarrow}": '\u2195'
  "\\updownarrow ": '\u2195'
  "{\\nwarrow}": '\u2196'
  "\\nwarrow ": '\u2196'
  "{\\nearrow}": '\u2197'
  "\\nearrow ": '\u2197'
  "{\\searrow}": '\u2198'
  "\\searrow ": '\u2198'
  "{\\swarrow}": '\u2199'
  "\\swarrow ": '\u2199'
  "{\\nleftarrow}": '\u219A'
  "\\nleftarrow ": '\u219A'
  "{\\nrightarrow}": '\u219B'
  "\\nrightarrow ": '\u219B'
  "{\\arrowwaveright}": '\u219C'
  "\\arrowwaveright ": '\u219C'
  "{\\twoheadleftarrow}": '\u219E'
  "\\twoheadleftarrow ": '\u219E'
  "{\\twoheadrightarrow}": '\u21A0'
  "\\twoheadrightarrow ": '\u21A0'
  "{\\leftarrowtail}": '\u21A2'
  "\\leftarrowtail ": '\u21A2'
  "{\\rightarrowtail}": '\u21A3'
  "\\rightarrowtail ": '\u21A3'
  "{\\mapsto}": '\u21A6'
  "\\mapsto ": '\u21A6'
  "{\\hookleftarrow}": '\u21A9'
  "\\hookleftarrow ": '\u21A9'
  "{\\hookrightarrow}": '\u21AA'
  "\\hookrightarrow ": '\u21AA'
  "{\\looparrowleft}": '\u21AB'
  "\\looparrowleft ": '\u21AB'
  "{\\looparrowright}": '\u21AC'
  "\\looparrowright ": '\u21AC'
  "{\\leftrightsquigarrow}": '\u21AD'
  "\\leftrightsquigarrow ": '\u21AD'
  "{\\nleftrightarrow}": '\u21AE'
  "\\nleftrightarrow ": '\u21AE'
  "{\\Lsh}": '\u21B0'
  "\\Lsh ": '\u21B0'
  "{\\Rsh}": '\u21B1'
  "\\Rsh ": '\u21B1'
  "\\ElsevierGlyph{21B3}": '\u21B3'
  "{\\curvearrowleft}": '\u21B6'
  "\\curvearrowleft ": '\u21B6'
  "{\\curvearrowright}": '\u21B7'
  "\\curvearrowright ": '\u21B7'
  "{\\circlearrowleft}": '\u21BA'
  "\\circlearrowleft ": '\u21BA'
  "{\\circlearrowright}": '\u21BB'
  "\\circlearrowright ": '\u21BB'
  "{\\leftharpoonup}": '\u21BC'
  "\\leftharpoonup ": '\u21BC'
  "{\\leftharpoondown}": '\u21BD'
  "\\leftharpoondown ": '\u21BD'
  "{\\upharpoonright}": '\u21BE'
  "\\upharpoonright ": '\u21BE'
  "{\\upharpoonleft}": '\u21BF'
  "\\upharpoonleft ": '\u21BF'
  "{\\rightharpoonup}": '\u21C0'
  "\\rightharpoonup ": '\u21C0'
  "{\\rightharpoondown}": '\u21C1'
  "\\rightharpoondown ": '\u21C1'
  "{\\downharpoonright}": '\u21C2'
  "\\downharpoonright ": '\u21C2'
  "{\\downharpoonleft}": '\u21C3'
  "\\downharpoonleft ": '\u21C3'
  "{\\rightleftarrows}": '\u21C4'
  "\\rightleftarrows ": '\u21C4'
  "{\\dblarrowupdown}": '\u21C5'
  "\\dblarrowupdown ": '\u21C5'
  "{\\leftrightarrows}": '\u21C6'
  "\\leftrightarrows ": '\u21C6'
  "{\\leftleftarrows}": '\u21C7'
  "\\leftleftarrows ": '\u21C7'
  "{\\upuparrows}": '\u21C8'
  "\\upuparrows ": '\u21C8'
  "{\\rightrightarrows}": '\u21C9'
  "\\rightrightarrows ": '\u21C9'
  "{\\downdownarrows}": '\u21CA'
  "\\downdownarrows ": '\u21CA'
  "{\\leftrightharpoons}": '\u21CB'
  "\\leftrightharpoons ": '\u21CB'
  "{\\rightleftharpoons}": '\u21CC'
  "\\rightleftharpoons ": '\u21CC'
  "{\\nLeftarrow}": '\u21CD'
  "\\nLeftarrow ": '\u21CD'
  "{\\nLeftrightarrow}": '\u21CE'
  "\\nLeftrightarrow ": '\u21CE'
  "{\\nRightarrow}": '\u21CF'
  "\\nRightarrow ": '\u21CF'
  "{\\Leftarrow}": '\u21D0'
  "\\Leftarrow ": '\u21D0'
  "{\\Uparrow}": '\u21D1'
  "\\Uparrow ": '\u21D1'
  "{\\Rightarrow}": '\u21D2'
  "\\Rightarrow ": '\u21D2'
  "{\\Downarrow}": '\u21D3'
  "\\Downarrow ": '\u21D3'
  "{\\Leftrightarrow}": '\u21D4'
  "\\Leftrightarrow ": '\u21D4'
  "{\\Updownarrow}": '\u21D5'
  "\\Updownarrow ": '\u21D5'
  "{\\Lleftarrow}": '\u21DA'
  "\\Lleftarrow ": '\u21DA'
  "{\\Rrightarrow}": '\u21DB'
  "\\Rrightarrow ": '\u21DB'
  "{\\rightsquigarrow}": '\u21DD'
  "\\rightsquigarrow ": '\u21DD'
  "{\\DownArrowUpArrow}": '\u21F5'
  "\\DownArrowUpArrow ": '\u21F5'
  "{\\forall}": '\u2200'
  "\\forall ": '\u2200'
  "{\\complement}": '\u2201'
  "\\complement ": '\u2201'
  "{\\partial}": '\u2202'
  "\\partial ": '\u2202'
  "{\\exists}": '\u2203'
  "\\exists ": '\u2203'
  "{\\nexists}": '\u2204'
  "\\nexists ": '\u2204'
  "{\\varnothing}": '\u2205'
  "\\varnothing ": '\u2205'
  "{\\nabla}": '\u2207'
  "\\nabla ": '\u2207'
  "{\\in}": '\u2208'
  "\\in ": '\u2208'
  "{\\not\\in}": '\u2209'
  "\\not\\in ": '\u2209'
  "{\\ni}": '\u220B'
  "\\ni ": '\u220B'
  "{\\not\\ni}": '\u220C'
  "\\not\\ni ": '\u220C'
  "{\\prod}": '\u220F'
  "\\prod ": '\u220F'
  "{\\coprod}": '\u2210'
  "\\coprod ": '\u2210'
  "{\\sum}": '\u2211'
  "\\sum ": '\u2211'
  "{\\mp}": '\u2213'
  "\\mp ": '\u2213'
  "{\\dotplus}": '\u2214'
  "\\dotplus ": '\u2214'
  "{\\setminus}": '\u2216'
  "\\setminus ": '\u2216'
  "{_\\ast}": '\u2217'
  "{\\circ}": '\u2218'
  "\\circ ": '\u2218'
  "{\\bullet}": '\u2219'
  "\\bullet ": '\u2219'
  "{\\surd}": '\u221A'
  "\\surd ": '\u221A'
  "{\\propto}": '\u221D'
  "\\propto ": '\u221D'
  "{\\infty}": '\u221E'
  "\\infty ": '\u221E'
  "{\\rightangle}": '\u221F'
  "\\rightangle ": '\u221F'
  "{\\angle}": '\u2220'
  "\\angle ": '\u2220'
  "{\\measuredangle}": '\u2221'
  "\\measuredangle ": '\u2221'
  "{\\sphericalangle}": '\u2222'
  "\\sphericalangle ": '\u2222'
  "{\\mid}": '\u2223'
  "\\mid ": '\u2223'
  "{\\nmid}": '\u2224'
  "\\nmid ": '\u2224'
  "{\\parallel}": '\u2225'
  "\\parallel ": '\u2225'
  "{\\nparallel}": '\u2226'
  "\\nparallel ": '\u2226'
  "{\\wedge}": '\u2227'
  "\\wedge ": '\u2227'
  "{\\vee}": '\u2228'
  "\\vee ": '\u2228'
  "{\\cap}": '\u2229'
  "\\cap ": '\u2229'
  "{\\cup}": '\u222A'
  "\\cup ": '\u222A'
  "{\\int}": '\u222B'
  "\\int ": '\u222B'
  "{\\int\\!\\int}": '\u222C'
  "\\int\\!\\int ": '\u222C'
  "{\\int\\!\\int\\!\\int}": '\u222D'
  "\\int\\!\\int\\!\\int ": '\u222D'
  "{\\oint}": '\u222E'
  "\\oint ": '\u222E'
  "{\\surfintegral}": '\u222F'
  "\\surfintegral ": '\u222F'
  "{\\volintegral}": '\u2230'
  "\\volintegral ": '\u2230'
  "{\\clwintegral}": '\u2231'
  "\\clwintegral ": '\u2231'
  "\\ElsevierGlyph{2232}": '\u2232'
  "\\ElsevierGlyph{2233}": '\u2233'
  "{\\therefore}": '\u2234'
  "\\therefore ": '\u2234'
  "{\\because}": '\u2235'
  "\\because ": '\u2235'
  "{\\Colon}": '\u2237'
  "\\Colon ": '\u2237'
  "\\ElsevierGlyph{2238}": '\u2238'
  "\\mathbin{{:}\\!\\!{-}\\!\\!{:}}": '\u223A'
  "{\\homothetic}": '\u223B'
  "\\homothetic ": '\u223B'
  "{\\sim}": '\u223C'
  "\\sim ": '\u223C'
  "{\\backsim}": '\u223D'
  "\\backsim ": '\u223D'
  "{\\lazysinv}": '\u223E'
  "\\lazysinv ": '\u223E'
  "{\\wr}": '\u2240'
  "\\wr ": '\u2240'
  "{\\not\\sim}": '\u2241'
  "\\not\\sim ": '\u2241'
  "\\ElsevierGlyph{2242}": '\u2242'
  "{\\simeq}": '\u2243'
  "\\simeq ": '\u2243'
  "{\\not\\simeq}": '\u2244'
  "\\not\\simeq ": '\u2244'
  "{\\cong}": '\u2245'
  "\\cong ": '\u2245'
  "{\\approxnotequal}": '\u2246'
  "\\approxnotequal ": '\u2246'
  "{\\not\\cong}": '\u2247'
  "\\not\\cong ": '\u2247'
  "{\\approx}": '\u2248'
  "\\approx ": '\u2248'
  "{\\not\\approx}": '\u2249'
  "\\not\\approx ": '\u2249'
  "{\\approxeq}": '\u224A'
  "\\approxeq ": '\u224A'
  "{\\tildetrpl}": '\u224B'
  "\\tildetrpl ": '\u224B'
  "{\\allequal}": '\u224C'
  "\\allequal ": '\u224C'
  "{\\asymp}": '\u224D'
  "\\asymp ": '\u224D'
  "{\\Bumpeq}": '\u224E'
  "\\Bumpeq ": '\u224E'
  "{\\bumpeq}": '\u224F'
  "\\bumpeq ": '\u224F'
  "{\\doteq}": '\u2250'
  "\\doteq ": '\u2250'
  "{\\doteqdot}": '\u2251'
  "\\doteqdot ": '\u2251'
  "{\\fallingdotseq}": '\u2252'
  "\\fallingdotseq ": '\u2252'
  "{\\risingdotseq}": '\u2253'
  "\\risingdotseq ": '\u2253'
  ":=": '\u2254'
  "=:": '\u2255'
  "{\\eqcirc}": '\u2256'
  "\\eqcirc ": '\u2256'
  "{\\circeq}": '\u2257'
  "\\circeq ": '\u2257'
  "{\\estimates}": '\u2259'
  "\\estimates ": '\u2259'
  "\\ElsevierGlyph{225A}": '\u225A'
  "{\\starequal}": '\u225B'
  "\\starequal ": '\u225B'
  "{\\triangleq}": '\u225C'
  "\\triangleq ": '\u225C'
  "\\ElsevierGlyph{225F}": '\u225F'
  "\\not =": '\u2260'
  "{\\equiv}": '\u2261'
  "\\equiv ": '\u2261'
  "{\\not\\equiv}": '\u2262'
  "\\not\\equiv ": '\u2262'
  "{\\leq}": '\u2264'
  "\\leq ": '\u2264'
  "{\\geq}": '\u2265'
  "\\geq ": '\u2265'
  "{\\leqq}": '\u2266'
  "\\leqq ": '\u2266'
  "{\\geqq}": '\u2267'
  "\\geqq ": '\u2267'
  "{\\lneqq}": '\u2268'
  "\\lneqq ": '\u2268'
  "{\\gneqq}": '\u2269'
  "\\gneqq ": '\u2269'
  "{\\ll}": '\u226A'
  "\\ll ": '\u226A'
  "{\\gg}": '\u226B'
  "\\gg ": '\u226B'
  "{\\between}": '\u226C'
  "\\between ": '\u226C'
  "{\\not\\kern-0.3em\\times}": '\u226D'
  "\\not\\kern-0.3em\\times ": '\u226D'
  "\\not<": '\u226E'
  "\\not>": '\u226F'
  "{\\not\\leq}": '\u2270'
  "\\not\\leq ": '\u2270'
  "{\\not\\geq}": '\u2271'
  "\\not\\geq ": '\u2271'
  "{\\lessequivlnt}": '\u2272'
  "\\lessequivlnt ": '\u2272'
  "{\\greaterequivlnt}": '\u2273'
  "\\greaterequivlnt ": '\u2273'
  "\\ElsevierGlyph{2274}": '\u2274'
  "\\ElsevierGlyph{2275}": '\u2275'
  "{\\lessgtr}": '\u2276'
  "\\lessgtr ": '\u2276'
  "{\\gtrless}": '\u2277'
  "\\gtrless ": '\u2277'
  "{\\notlessgreater}": '\u2278'
  "\\notlessgreater ": '\u2278'
  "{\\notgreaterless}": '\u2279'
  "\\notgreaterless ": '\u2279'
  "{\\prec}": '\u227A'
  "\\prec ": '\u227A'
  "{\\succ}": '\u227B'
  "\\succ ": '\u227B'
  "{\\preccurlyeq}": '\u227C'
  "\\preccurlyeq ": '\u227C'
  "{\\succcurlyeq}": '\u227D'
  "\\succcurlyeq ": '\u227D'
  "{\\precapprox}": '\u227E'
  "\\precapprox ": '\u227E'
  "{\\succapprox}": '\u227F'
  "\\succapprox ": '\u227F'
  "{\\not\\prec}": '\u2280'
  "\\not\\prec ": '\u2280'
  "{\\not\\succ}": '\u2281'
  "\\not\\succ ": '\u2281'
  "{\\subset}": '\u2282'
  "\\subset ": '\u2282'
  "{\\supset}": '\u2283'
  "\\supset ": '\u2283'
  "{\\not\\subset}": '\u2284'
  "\\not\\subset ": '\u2284'
  "{\\not\\supset}": '\u2285'
  "\\not\\supset ": '\u2285'
  "{\\subseteq}": '\u2286'
  "\\subseteq ": '\u2286'
  "{\\supseteq}": '\u2287'
  "\\supseteq ": '\u2287'
  "{\\not\\subseteq}": '\u2288'
  "\\not\\subseteq ": '\u2288'
  "{\\not\\supseteq}": '\u2289'
  "\\not\\supseteq ": '\u2289'
  "{\\subsetneq}": '\u228A'
  "\\subsetneq ": '\u228A'
  "{\\supsetneq}": '\u228B'
  "\\supsetneq ": '\u228B'
  "{\\uplus}": '\u228E'
  "\\uplus ": '\u228E'
  "{\\sqsubset}": '\u228F'
  "\\sqsubset ": '\u228F'
  "{\\sqsupset}": '\u2290'
  "\\sqsupset ": '\u2290'
  "{\\sqsubseteq}": '\u2291'
  "\\sqsubseteq ": '\u2291'
  "{\\sqsupseteq}": '\u2292'
  "\\sqsupseteq ": '\u2292'
  "{\\sqcap}": '\u2293'
  "\\sqcap ": '\u2293'
  "{\\sqcup}": '\u2294'
  "\\sqcup ": '\u2294'
  "{\\oplus}": '\u2295'
  "\\oplus ": '\u2295'
  "{\\ominus}": '\u2296'
  "\\ominus ": '\u2296'
  "{\\otimes}": '\u2297'
  "\\otimes ": '\u2297'
  "{\\oslash}": '\u2298'
  "\\oslash ": '\u2298'
  "{\\odot}": '\u2299'
  "\\odot ": '\u2299'
  "{\\circledcirc}": '\u229A'
  "\\circledcirc ": '\u229A'
  "{\\circledast}": '\u229B'
  "\\circledast ": '\u229B'
  "{\\circleddash}": '\u229D'
  "\\circleddash ": '\u229D'
  "{\\boxplus}": '\u229E'
  "\\boxplus ": '\u229E'
  "{\\boxminus}": '\u229F'
  "\\boxminus ": '\u229F'
  "{\\boxtimes}": '\u22A0'
  "\\boxtimes ": '\u22A0'
  "{\\boxdot}": '\u22A1'
  "\\boxdot ": '\u22A1'
  "{\\vdash}": '\u22A2'
  "\\vdash ": '\u22A2'
  "{\\dashv}": '\u22A3'
  "\\dashv ": '\u22A3'
  "{\\top}": '\u22A4'
  "\\top ": '\u22A4'
  "{\\perp}": '\u22A5'
  "\\perp ": '\u22A5'
  "{\\truestate}": '\u22A7'
  "\\truestate ": '\u22A7'
  "{\\forcesextra}": '\u22A8'
  "\\forcesextra ": '\u22A8'
  "{\\Vdash}": '\u22A9'
  "\\Vdash ": '\u22A9'
  "{\\Vvdash}": '\u22AA'
  "\\Vvdash ": '\u22AA'
  "{\\VDash}": '\u22AB'
  "\\VDash ": '\u22AB'
  "{\\nvdash}": '\u22AC'
  "\\nvdash ": '\u22AC'
  "{\\nvDash}": '\u22AD'
  "\\nvDash ": '\u22AD'
  "{\\nVdash}": '\u22AE'
  "\\nVdash ": '\u22AE'
  "{\\nVDash}": '\u22AF'
  "\\nVDash ": '\u22AF'
  "{\\vartriangleleft}": '\u22B2'
  "\\vartriangleleft ": '\u22B2'
  "{\\vartriangleright}": '\u22B3'
  "\\vartriangleright ": '\u22B3'
  "{\\trianglelefteq}": '\u22B4'
  "\\trianglelefteq ": '\u22B4'
  "{\\trianglerighteq}": '\u22B5'
  "\\trianglerighteq ": '\u22B5'
  "{\\original}": '\u22B6'
  "\\original ": '\u22B6'
  "{\\image}": '\u22B7'
  "\\image ": '\u22B7'
  "{\\multimap}": '\u22B8'
  "\\multimap ": '\u22B8'
  "{\\hermitconjmatrix}": '\u22B9'
  "\\hermitconjmatrix ": '\u22B9'
  "{\\intercal}": '\u22BA'
  "\\intercal ": '\u22BA'
  "{\\veebar}": '\u22BB'
  "\\veebar ": '\u22BB'
  "{\\rightanglearc}": '\u22BE'
  "\\rightanglearc ": '\u22BE'
  "\\ElsevierGlyph{22C0}": '\u22C0'
  "\\ElsevierGlyph{22C1}": '\u22C1'
  "{\\bigcap}": '\u22C2'
  "\\bigcap ": '\u22C2'
  "{\\bigcup}": '\u22C3'
  "\\bigcup ": '\u22C3'
  "{\\diamond}": '\u22C4'
  "\\diamond ": '\u22C4'
  "{\\star}": '\u22C6'
  "\\star ": '\u22C6'
  "{\\divideontimes}": '\u22C7'
  "\\divideontimes ": '\u22C7'
  "{\\bowtie}": '\u22C8'
  "\\bowtie ": '\u22C8'
  "{\\ltimes}": '\u22C9'
  "\\ltimes ": '\u22C9'
  "{\\rtimes}": '\u22CA'
  "\\rtimes ": '\u22CA'
  "{\\leftthreetimes}": '\u22CB'
  "\\leftthreetimes ": '\u22CB'
  "{\\rightthreetimes}": '\u22CC'
  "\\rightthreetimes ": '\u22CC'
  "{\\backsimeq}": '\u22CD'
  "\\backsimeq ": '\u22CD'
  "{\\curlyvee}": '\u22CE'
  "\\curlyvee ": '\u22CE'
  "{\\curlywedge}": '\u22CF'
  "\\curlywedge ": '\u22CF'
  "{\\Subset}": '\u22D0'
  "\\Subset ": '\u22D0'
  "{\\Supset}": '\u22D1'
  "\\Supset ": '\u22D1'
  "{\\Cap}": '\u22D2'
  "\\Cap ": '\u22D2'
  "{\\Cup}": '\u22D3'
  "\\Cup ": '\u22D3'
  "{\\pitchfork}": '\u22D4'
  "\\pitchfork ": '\u22D4'
  "{\\lessdot}": '\u22D6'
  "\\lessdot ": '\u22D6'
  "{\\gtrdot}": '\u22D7'
  "\\gtrdot ": '\u22D7'
  "{\\verymuchless}": '\u22D8'
  "\\verymuchless ": '\u22D8'
  "{\\verymuchgreater}": '\u22D9'
  "\\verymuchgreater ": '\u22D9'
  "{\\lesseqgtr}": '\u22DA'
  "\\lesseqgtr ": '\u22DA'
  "{\\gtreqless}": '\u22DB'
  "\\gtreqless ": '\u22DB'
  "{\\curlyeqprec}": '\u22DE'
  "\\curlyeqprec ": '\u22DE'
  "{\\curlyeqsucc}": '\u22DF'
  "\\curlyeqsucc ": '\u22DF'
  "{\\not\\sqsubseteq}": '\u22E2'
  "\\not\\sqsubseteq ": '\u22E2'
  "{\\not\\sqsupseteq}": '\u22E3'
  "\\not\\sqsupseteq ": '\u22E3'
  "{\\Elzsqspne}": '\u22E5'
  "\\Elzsqspne ": '\u22E5'
  "{\\lnsim}": '\u22E6'
  "\\lnsim ": '\u22E6'
  "{\\gnsim}": '\u22E7'
  "\\gnsim ": '\u22E7'
  "{\\precedesnotsimilar}": '\u22E8'
  "\\precedesnotsimilar ": '\u22E8'
  "{\\succnsim}": '\u22E9'
  "\\succnsim ": '\u22E9'
  "{\\ntriangleleft}": '\u22EA'
  "\\ntriangleleft ": '\u22EA'
  "{\\ntriangleright}": '\u22EB'
  "\\ntriangleright ": '\u22EB'
  "{\\ntrianglelefteq}": '\u22EC'
  "\\ntrianglelefteq ": '\u22EC'
  "{\\ntrianglerighteq}": '\u22ED'
  "\\ntrianglerighteq ": '\u22ED'
  "{\\vdots}": '\u22EE'
  "\\vdots ": '\u22EE'
  "{\\cdots}": '\u22EF'
  "\\cdots ": '\u22EF'
  "{\\upslopeellipsis}": '\u22F0'
  "\\upslopeellipsis ": '\u22F0'
  "{\\downslopeellipsis}": '\u22F1'
  "\\downslopeellipsis ": '\u22F1'
  "{\\barwedge}": '\u2305'
  "\\barwedge ": '\u2305'
  "{\\perspcorrespond}": '\u2306'
  "\\perspcorrespond ": '\u2306'
  "{\\lceil}": '\u2308'
  "\\lceil ": '\u2308'
  "{\\rceil}": '\u2309'
  "\\rceil ": '\u2309'
  "{\\lfloor}": '\u230A'
  "\\lfloor ": '\u230A'
  "{\\rfloor}": '\u230B'
  "\\rfloor ": '\u230B'
  "{\\recorder}": '\u2315'
  "\\recorder ": '\u2315'
  "\\mathchar\"2208": '\u2316'
  "{\\ulcorner}": '\u231C'
  "\\ulcorner ": '\u231C'
  "{\\urcorner}": '\u231D'
  "\\urcorner ": '\u231D'
  "{\\llcorner}": '\u231E'
  "\\llcorner ": '\u231E'
  "{\\lrcorner}": '\u231F'
  "\\lrcorner ": '\u231F'
  "{\\frown}": '\u2322'
  "\\frown ": '\u2322'
  "{\\smile}": '\u2323'
  "\\smile ": '\u2323'
  "{\\langle}": '\u2329'
  "\\langle ": '\u2329'
  "{\\rangle}": '\u232A'
  "\\rangle ": '\u232A'
  "\\ElsevierGlyph{E838}": '\u233D'
  "{\\Elzdlcorn}": '\u23A3'
  "\\Elzdlcorn ": '\u23A3'
  "{\\lmoustache}": '\u23B0'
  "\\lmoustache ": '\u23B0'
  "{\\rmoustache}": '\u23B1'
  "\\rmoustache ": '\u23B1'
  "{\\textvisiblespace}": '\u2423'
  "\\textvisiblespace ": '\u2423'
  "\\ding{172}": '\u2460'
  "\\ding{173}": '\u2461'
  "\\ding{174}": '\u2462'
  "\\ding{175}": '\u2463'
  "\\ding{176}": '\u2464'
  "\\ding{177}": '\u2465'
  "\\ding{178}": '\u2466'
  "\\ding{179}": '\u2467'
  "\\ding{180}": '\u2468'
  "\\ding{181}": '\u2469'
  "{\\circledS}": '\u24C8'
  "\\circledS ": '\u24C8'
  "{\\Elzdshfnc}": '\u2506'
  "\\Elzdshfnc ": '\u2506'
  "{\\Elzsqfnw}": '\u2519'
  "\\Elzsqfnw ": '\u2519'
  "{\\diagup}": '\u2571'
  "\\diagup ": '\u2571'
  "\\ding{110}": '\u25A0'
  "{\\square}": '\u25A1'
  "\\square ": '\u25A1'
  "{\\blacksquare}": '\u25AA'
  "\\blacksquare ": '\u25AA'
  "\\fbox{~~}": '\u25AD'
  "{\\Elzvrecto}": '\u25AF'
  "\\Elzvrecto ": '\u25AF'
  "\\ElsevierGlyph{E381}": '\u25B1'
  "\\ding{115}": '\u25B2'
  "{\\bigtriangleup}": '\u25B3'
  "\\bigtriangleup ": '\u25B3'
  "{\\blacktriangle}": '\u25B4'
  "\\blacktriangle ": '\u25B4'
  "{\\vartriangle}": '\u25B5'
  "\\vartriangle ": '\u25B5'
  "{\\blacktriangleright}": '\u25B8'
  "\\blacktriangleright ": '\u25B8'
  "{\\triangleright}": '\u25B9'
  "\\triangleright ": '\u25B9'
  "\\ding{116}": '\u25BC'
  "{\\bigtriangledown}": '\u25BD'
  "\\bigtriangledown ": '\u25BD'
  "{\\blacktriangledown}": '\u25BE'
  "\\blacktriangledown ": '\u25BE'
  "{\\triangledown}": '\u25BF'
  "\\triangledown ": '\u25BF'
  "{\\blacktriangleleft}": '\u25C2'
  "\\blacktriangleleft ": '\u25C2'
  "{\\triangleleft}": '\u25C3'
  "\\triangleleft ": '\u25C3'
  "\\ding{117}": '\u25C6'
  "{\\lozenge}": '\u25CA'
  "\\lozenge ": '\u25CA'
  "{\\bigcirc}": '\u25CB'
  "\\bigcirc ": '\u25CB'
  "\\ding{108}": '\u25CF'
  "{\\Elzcirfl}": '\u25D0'
  "\\Elzcirfl ": '\u25D0'
  "{\\Elzcirfr}": '\u25D1'
  "\\Elzcirfr ": '\u25D1'
  "{\\Elzcirfb}": '\u25D2'
  "\\Elzcirfb ": '\u25D2'
  "\\ding{119}": '\u25D7'
  "{\\Elzrvbull}": '\u25D8'
  "\\Elzrvbull ": '\u25D8'
  "{\\Elzsqfl}": '\u25E7'
  "\\Elzsqfl ": '\u25E7'
  "{\\Elzsqfr}": '\u25E8'
  "\\Elzsqfr ": '\u25E8'
  "{\\Elzsqfse}": '\u25EA'
  "\\Elzsqfse ": '\u25EA'
  "\\ding{72}": '\u2605'
  "\\ding{73}": '\u2606'
  "\\ding{37}": '\u260E'
  "\\ding{42}": '\u261B'
  "\\ding{43}": '\u261E'
  "{\\rightmoon}": '\u263E'
  "\\rightmoon ": '\u263E'
  "{\\mercury}": '\u263F'
  "\\mercury ": '\u263F'
  "{\\venus}": '\u2640'
  "\\venus ": '\u2640'
  "{\\male}": '\u2642'
  "\\male ": '\u2642'
  "{\\jupiter}": '\u2643'
  "\\jupiter ": '\u2643'
  "{\\saturn}": '\u2644'
  "\\saturn ": '\u2644'
  "{\\uranus}": '\u2645'
  "\\uranus ": '\u2645'
  "{\\neptune}": '\u2646'
  "\\neptune ": '\u2646'
  "{\\pluto}": '\u2647'
  "\\pluto ": '\u2647'
  "{\\aries}": '\u2648'
  "\\aries ": '\u2648'
  "{\\taurus}": '\u2649'
  "\\taurus ": '\u2649'
  "{\\gemini}": '\u264A'
  "\\gemini ": '\u264A'
  "{\\cancer}": '\u264B'
  "\\cancer ": '\u264B'
  "{\\leo}": '\u264C'
  "\\leo ": '\u264C'
  "{\\virgo}": '\u264D'
  "\\virgo ": '\u264D'
  "{\\libra}": '\u264E'
  "\\libra ": '\u264E'
  "{\\scorpio}": '\u264F'
  "\\scorpio ": '\u264F'
  "{\\sagittarius}": '\u2650'
  "\\sagittarius ": '\u2650'
  "{\\capricornus}": '\u2651'
  "\\capricornus ": '\u2651'
  "{\\aquarius}": '\u2652'
  "\\aquarius ": '\u2652'
  "{\\pisces}": '\u2653'
  "\\pisces ": '\u2653'
  "\\ding{171}": '\u2660'
  "\\ding{168}": '\u2663'
  "\\ding{170}": '\u2665'
  "\\ding{169}": '\u2666'
  "{\\quarternote}": '\u2669'
  "\\quarternote ": '\u2669'
  "{\\eighthnote}": '\u266A'
  "\\eighthnote ": '\u266A'
  "{\\flat}": '\u266D'
  "\\flat ": '\u266D'
  "{\\natural}": '\u266E'
  "\\natural ": '\u266E'
  "{\\sharp}": '\u266F'
  "\\sharp ": '\u266F'
  "\\ding{33}": '\u2701'
  "\\ding{34}": '\u2702'
  "\\ding{35}": '\u2703'
  "\\ding{36}": '\u2704'
  "\\ding{38}": '\u2706'
  "\\ding{39}": '\u2707'
  "\\ding{40}": '\u2708'
  "\\ding{41}": '\u2709'
  "\\ding{44}": '\u270C'
  "\\ding{45}": '\u270D'
  "\\ding{46}": '\u270E'
  "\\ding{47}": '\u270F'
  "\\ding{48}": '\u2710'
  "\\ding{49}": '\u2711'
  "\\ding{50}": '\u2712'
  "\\ding{51}": '\u2713'
  "\\ding{52}": '\u2714'
  "\\ding{53}": '\u2715'
  "\\ding{54}": '\u2716'
  "\\ding{55}": '\u2717'
  "\\ding{56}": '\u2718'
  "\\ding{57}": '\u2719'
  "\\ding{58}": '\u271A'
  "\\ding{59}": '\u271B'
  "\\ding{60}": '\u271C'
  "\\ding{61}": '\u271D'
  "\\ding{62}": '\u271E'
  "\\ding{63}": '\u271F'
  "\\ding{64}": '\u2720'
  "\\ding{65}": '\u2721'
  "\\ding{66}": '\u2722'
  "\\ding{67}": '\u2723'
  "\\ding{68}": '\u2724'
  "\\ding{69}": '\u2725'
  "\\ding{70}": '\u2726'
  "\\ding{71}": '\u2727'
  "\\ding{74}": '\u272A'
  "\\ding{75}": '\u272B'
  "\\ding{76}": '\u272C'
  "\\ding{77}": '\u272D'
  "\\ding{78}": '\u272E'
  "\\ding{79}": '\u272F'
  "\\ding{80}": '\u2730'
  "\\ding{81}": '\u2731'
  "\\ding{82}": '\u2732'
  "\\ding{83}": '\u2733'
  "\\ding{84}": '\u2734'
  "\\ding{85}": '\u2735'
  "\\ding{86}": '\u2736'
  "\\ding{87}": '\u2737'
  "\\ding{88}": '\u2738'
  "\\ding{89}": '\u2739'
  "\\ding{90}": '\u273A'
  "\\ding{91}": '\u273B'
  "\\ding{92}": '\u273C'
  "\\ding{93}": '\u273D'
  "\\ding{94}": '\u273E'
  "\\ding{95}": '\u273F'
  "\\ding{96}": '\u2740'
  "\\ding{97}": '\u2741'
  "\\ding{98}": '\u2742'
  "\\ding{99}": '\u2743'
  "\\ding{100}": '\u2744'
  "\\ding{101}": '\u2745'
  "\\ding{102}": '\u2746'
  "\\ding{103}": '\u2747'
  "\\ding{104}": '\u2748'
  "\\ding{105}": '\u2749'
  "\\ding{106}": '\u274A'
  "\\ding{107}": '\u274B'
  "\\ding{109}": '\u274D'
  "\\ding{111}": '\u274F'
  "\\ding{112}": '\u2750'
  "\\ding{113}": '\u2751'
  "\\ding{114}": '\u2752'
  "\\ding{118}": '\u2756'
  "\\ding{120}": '\u2758'
  "\\ding{121}": '\u2759'
  "\\ding{122}": '\u275A'
  "\\ding{123}": '\u275B'
  "\\ding{124}": '\u275C'
  "\\ding{125}": '\u275D'
  "\\ding{126}": '\u275E'
  "\\ding{161}": '\u2761'
  "\\ding{162}": '\u2762'
  "\\ding{163}": '\u2763'
  "\\ding{164}": '\u2764'
  "\\ding{165}": '\u2765'
  "\\ding{166}": '\u2766'
  "\\ding{167}": '\u2767'
  "\\ding{182}": '\u2776'
  "\\ding{183}": '\u2777'
  "\\ding{184}": '\u2778'
  "\\ding{185}": '\u2779'
  "\\ding{186}": '\u277A'
  "\\ding{187}": '\u277B'
  "\\ding{188}": '\u277C'
  "\\ding{189}": '\u277D'
  "\\ding{190}": '\u277E'
  "\\ding{191}": '\u277F'
  "\\ding{192}": '\u2780'
  "\\ding{193}": '\u2781'
  "\\ding{194}": '\u2782'
  "\\ding{195}": '\u2783'
  "\\ding{196}": '\u2784'
  "\\ding{197}": '\u2785'
  "\\ding{198}": '\u2786'
  "\\ding{199}": '\u2787'
  "\\ding{200}": '\u2788'
  "\\ding{201}": '\u2789'
  "\\ding{202}": '\u278A'
  "\\ding{203}": '\u278B'
  "\\ding{204}": '\u278C'
  "\\ding{205}": '\u278D'
  "\\ding{206}": '\u278E'
  "\\ding{207}": '\u278F'
  "\\ding{208}": '\u2790'
  "\\ding{209}": '\u2791'
  "\\ding{210}": '\u2792'
  "\\ding{211}": '\u2793'
  "\\ding{212}": '\u2794'
  "\\ding{216}": '\u2798'
  "\\ding{217}": '\u2799'
  "\\ding{218}": '\u279A'
  "\\ding{219}": '\u279B'
  "\\ding{220}": '\u279C'
  "\\ding{221}": '\u279D'
  "\\ding{222}": '\u279E'
  "\\ding{223}": '\u279F'
  "\\ding{224}": '\u27A0'
  "\\ding{225}": '\u27A1'
  "\\ding{226}": '\u27A2'
  "\\ding{227}": '\u27A3'
  "\\ding{228}": '\u27A4'
  "\\ding{229}": '\u27A5'
  "\\ding{230}": '\u27A6'
  "\\ding{231}": '\u27A7'
  "\\ding{232}": '\u27A8'
  "\\ding{233}": '\u27A9'
  "\\ding{234}": '\u27AA'
  "\\ding{235}": '\u27AB'
  "\\ding{236}": '\u27AC'
  "\\ding{237}": '\u27AD'
  "\\ding{238}": '\u27AE'
  "\\ding{239}": '\u27AF'
  "\\ding{241}": '\u27B1'
  "\\ding{242}": '\u27B2'
  "\\ding{243}": '\u27B3'
  "\\ding{244}": '\u27B4'
  "\\ding{245}": '\u27B5'
  "\\ding{246}": '\u27B6'
  "\\ding{247}": '\u27B7'
  "\\ding{248}": '\u27B8'
  "\\ding{249}": '\u27B9'
  "\\ding{250}": '\u27BA'
  "\\ding{251}": '\u27BB'
  "\\ding{252}": '\u27BC'
  "\\ding{253}": '\u27BD'
  "\\ding{254}": '\u27BE'
  "{\\longleftarrow}": '\u27F5'
  "\\longleftarrow ": '\u27F5'
  "{\\longrightarrow}": '\u27F6'
  "\\longrightarrow ": '\u27F6'
  "{\\longleftrightarrow}": '\u27F7'
  "\\longleftrightarrow ": '\u27F7'
  "{\\Longleftarrow}": '\u27F8'
  "\\Longleftarrow ": '\u27F8'
  "{\\Longrightarrow}": '\u27F9'
  "\\Longrightarrow ": '\u27F9'
  "{\\Longleftrightarrow}": '\u27FA'
  "\\Longleftrightarrow ": '\u27FA'
  "{\\longmapsto}": '\u27FC'
  "\\longmapsto ": '\u27FC'
  "\\sim\\joinrel\\leadsto": '\u27FF'
  "\\ElsevierGlyph{E212}": '\u2905'
  "{\\UpArrowBar}": '\u2912'
  "\\UpArrowBar ": '\u2912'
  "{\\DownArrowBar}": '\u2913'
  "\\DownArrowBar ": '\u2913'
  "\\ElsevierGlyph{E20C}": '\u2923'
  "\\ElsevierGlyph{E20D}": '\u2924'
  "\\ElsevierGlyph{E20B}": '\u2925'
  "\\ElsevierGlyph{E20A}": '\u2926'
  "\\ElsevierGlyph{E211}": '\u2927'
  "\\ElsevierGlyph{E20E}": '\u2928'
  "\\ElsevierGlyph{E20F}": '\u2929'
  "\\ElsevierGlyph{E210}": '\u292A'
  "\\ElsevierGlyph{E21C}": '\u2933'
  "\\ElsevierGlyph{E21A}": '\u2936'
  "\\ElsevierGlyph{E219}": '\u2937'
  "{\\Elolarr}": '\u2940'
  "\\Elolarr ": '\u2940'
  "{\\Elorarr}": '\u2941'
  "\\Elorarr ": '\u2941'
  "{\\ElzRlarr}": '\u2942'
  "\\ElzRlarr ": '\u2942'
  "{\\ElzrLarr}": '\u2944'
  "\\ElzrLarr ": '\u2944'
  "{\\Elzrarrx}": '\u2947'
  "\\Elzrarrx ": '\u2947'
  "{\\LeftRightVector}": '\u294E'
  "\\LeftRightVector ": '\u294E'
  "{\\RightUpDownVector}": '\u294F'
  "\\RightUpDownVector ": '\u294F'
  "{\\DownLeftRightVector}": '\u2950'
  "\\DownLeftRightVector ": '\u2950'
  "{\\LeftUpDownVector}": '\u2951'
  "\\LeftUpDownVector ": '\u2951'
  "{\\LeftVectorBar}": '\u2952'
  "\\LeftVectorBar ": '\u2952'
  "{\\RightVectorBar}": '\u2953'
  "\\RightVectorBar ": '\u2953'
  "{\\RightUpVectorBar}": '\u2954'
  "\\RightUpVectorBar ": '\u2954'
  "{\\RightDownVectorBar}": '\u2955'
  "\\RightDownVectorBar ": '\u2955'
  "{\\DownLeftVectorBar}": '\u2956'
  "\\DownLeftVectorBar ": '\u2956'
  "{\\DownRightVectorBar}": '\u2957'
  "\\DownRightVectorBar ": '\u2957'
  "{\\LeftUpVectorBar}": '\u2958'
  "\\LeftUpVectorBar ": '\u2958'
  "{\\LeftDownVectorBar}": '\u2959'
  "\\LeftDownVectorBar ": '\u2959'
  "{\\LeftTeeVector}": '\u295A'
  "\\LeftTeeVector ": '\u295A'
  "{\\RightTeeVector}": '\u295B'
  "\\RightTeeVector ": '\u295B'
  "{\\RightUpTeeVector}": '\u295C'
  "\\RightUpTeeVector ": '\u295C'
  "{\\RightDownTeeVector}": '\u295D'
  "\\RightDownTeeVector ": '\u295D'
  "{\\DownLeftTeeVector}": '\u295E'
  "\\DownLeftTeeVector ": '\u295E'
  "{\\DownRightTeeVector}": '\u295F'
  "\\DownRightTeeVector ": '\u295F'
  "{\\LeftUpTeeVector}": '\u2960'
  "\\LeftUpTeeVector ": '\u2960'
  "{\\LeftDownTeeVector}": '\u2961'
  "\\LeftDownTeeVector ": '\u2961'
  "{\\UpEquilibrium}": '\u296E'
  "\\UpEquilibrium ": '\u296E'
  "{\\ReverseUpEquilibrium}": '\u296F'
  "\\ReverseUpEquilibrium ": '\u296F'
  "{\\RoundImplies}": '\u2970'
  "\\RoundImplies ": '\u2970'
  "\\ElsevierGlyph{E214}": '\u297C'
  "\\ElsevierGlyph{E215}": '\u297D'
  "{\\Elztfnc}": '\u2980'
  "\\Elztfnc ": '\u2980'
  "\\ElsevierGlyph{3018}": '\u2985'
  "{\\Elroang}": '\u2986'
  "\\Elroang ": '\u2986'
  "<\\kern-0.58em(": '\u2993'
  "\\ElsevierGlyph{E291}": '\u2994'
  "{\\Elzddfnc}": '\u2999'
  "\\Elzddfnc ": '\u2999'
  "{\\Angle}": '\u299C'
  "\\Angle ": '\u299C'
  "{\\Elzlpargt}": '\u29A0'
  "\\Elzlpargt ": '\u29A0'
  "\\ElsevierGlyph{E260}": '\u29B5'
  "\\ElsevierGlyph{E61B}": '\u29B6'
  "{\\ElzLap}": '\u29CA'
  "\\ElzLap ": '\u29CA'
  "{\\Elzdefas}": '\u29CB'
  "\\Elzdefas ": '\u29CB'
  "{\\LeftTriangleBar}": '\u29CF'
  "\\LeftTriangleBar ": '\u29CF'
  "{\\RightTriangleBar}": '\u29D0'
  "\\RightTriangleBar ": '\u29D0'
  "\\ElsevierGlyph{E372}": '\u29DC'
  "{\\blacklozenge}": '\u29EB'
  "\\blacklozenge ": '\u29EB'
  "{\\RuleDelayed}": '\u29F4'
  "\\RuleDelayed ": '\u29F4'
  "{\\Elxuplus}": '\u2A04'
  "\\Elxuplus ": '\u2A04'
  "{\\ElzThr}": '\u2A05'
  "\\ElzThr ": '\u2A05'
  "{\\Elxsqcup}": '\u2A06'
  "\\Elxsqcup ": '\u2A06'
  "{\\ElzInf}": '\u2A07'
  "\\ElzInf ": '\u2A07'
  "{\\ElzSup}": '\u2A08'
  "\\ElzSup ": '\u2A08'
  "{\\ElzCint}": '\u2A0D'
  "\\ElzCint ": '\u2A0D'
  "{\\clockoint}": '\u2A0F'
  "\\clockoint ": '\u2A0F'
  "\\ElsevierGlyph{E395}": '\u2A10'
  "{\\sqrint}": '\u2A16'
  "\\sqrint ": '\u2A16'
  "\\ElsevierGlyph{E25A}": '\u2A25'
  "\\ElsevierGlyph{E25B}": '\u2A2A'
  "\\ElsevierGlyph{E25C}": '\u2A2D'
  "\\ElsevierGlyph{E25D}": '\u2A2E'
  "{\\ElzTimes}": '\u2A2F'
  "\\ElzTimes ": '\u2A2F'
  "\\ElsevierGlyph{E25E}": '\u2A34'
  "\\ElsevierGlyph{E259}": '\u2A3C'
  "{\\amalg}": '\u2A3F'
  "\\amalg ": '\u2A3F'
  "{\\ElzAnd}": '\u2A53'
  "\\ElzAnd ": '\u2A53'
  "{\\ElzOr}": '\u2A54'
  "\\ElzOr ": '\u2A54'
  "\\ElsevierGlyph{E36E}": '\u2A55'
  "{\\ElOr}": '\u2A56'
  "\\ElOr ": '\u2A56'
  "{\\Elzminhat}": '\u2A5F'
  "\\Elzminhat ": '\u2A5F'
  "\\stackrel{*}{=}": '\u2A6E'
  "{\\Equal}": '\u2A75'
  "\\Equal ": '\u2A75'
  "{\\leqslant}": '\u2A7D'
  "\\leqslant ": '\u2A7D'
  "{\\geqslant}": '\u2A7E'
  "\\geqslant ": '\u2A7E'
  "{\\lessapprox}": '\u2A85'
  "\\lessapprox ": '\u2A85'
  "{\\gtrapprox}": '\u2A86'
  "\\gtrapprox ": '\u2A86'
  "{\\lneq}": '\u2A87'
  "\\lneq ": '\u2A87'
  "{\\gneq}": '\u2A88'
  "\\gneq ": '\u2A88'
  "{\\lnapprox}": '\u2A89'
  "\\lnapprox ": '\u2A89'
  "{\\gnapprox}": '\u2A8A'
  "\\gnapprox ": '\u2A8A'
  "{\\lesseqqgtr}": '\u2A8B'
  "\\lesseqqgtr ": '\u2A8B'
  "{\\gtreqqless}": '\u2A8C'
  "\\gtreqqless ": '\u2A8C'
  "{\\eqslantless}": '\u2A95'
  "\\eqslantless ": '\u2A95'
  "{\\eqslantgtr}": '\u2A96'
  "\\eqslantgtr ": '\u2A96'
  "\\Pisymbol{ppi020}{117}": '\u2A9D'
  "\\Pisymbol{ppi020}{105}": '\u2A9E'
  "{\\NestedLessLess}": '\u2AA1'
  "\\NestedLessLess ": '\u2AA1'
  "{\\NestedGreaterGreater}": '\u2AA2'
  "\\NestedGreaterGreater ": '\u2AA2'
  "{\\preceq}": '\u2AAF'
  "\\preceq ": '\u2AAF'
  "{\\succeq}": '\u2AB0'
  "\\succeq ": '\u2AB0'
  "{\\precneqq}": '\u2AB5'
  "\\precneqq ": '\u2AB5'
  "{\\succneqq}": '\u2AB6'
  "\\succneqq ": '\u2AB6'
  "{\\precnapprox}": '\u2AB9'
  "\\precnapprox ": '\u2AB9'
  "{\\succnapprox}": '\u2ABA'
  "\\succnapprox ": '\u2ABA'
  "{\\subseteqq}": '\u2AC5'
  "\\subseteqq ": '\u2AC5'
  "{\\supseteqq}": '\u2AC6'
  "\\supseteqq ": '\u2AC6'
  "{\\subsetneqq}": '\u2ACB'
  "\\subsetneqq ": '\u2ACB'
  "{\\supsetneqq}": '\u2ACC'
  "\\supsetneqq ": '\u2ACC'
  "\\ElsevierGlyph{E30D}": '\u2AEB'
  "{\\Elztdcol}": '\u2AF6'
  "\\Elztdcol ": '\u2AF6'
  "{{/}\\!\\!{/}}": '\u2AFD'
  "\\ElsevierGlyph{300A}": '\u300A'
  "\\ElsevierGlyph{300B}": '\u300B'
  "\\ElsevierGlyph{3019}": '\u3019'
  "{\\openbracketleft}": '\u301A'
  "\\openbracketleft ": '\u301A'
  "{\\openbracketright}": '\u301B'
  "\\openbracketright ": '\u301B'
  "\\dbend": '\uFFFD'
  "\\mathbf{A}": '\uD835\uDC00'
  "\\mathbf{B}": '\uD835\uDC01'
  "\\mathbf{C}": '\uD835\uDC02'
  "\\mathbf{D}": '\uD835\uDC03'
  "\\mathbf{E}": '\uD835\uDC04'
  "\\mathbf{F}": '\uD835\uDC05'
  "\\mathbf{G}": '\uD835\uDC06'
  "\\mathbf{H}": '\uD835\uDC07'
  "\\mathbf{I}": '\uD835\uDC08'
  "\\mathbf{J}": '\uD835\uDC09'
  "\\mathbf{K}": '\uD835\uDC0A'
  "\\mathbf{L}": '\uD835\uDC0B'
  "\\mathbf{M}": '\uD835\uDC0C'
  "\\mathbf{N}": '\uD835\uDC0D'
  "\\mathbf{O}": '\uD835\uDC0E'
  "\\mathbf{P}": '\uD835\uDC0F'
  "\\mathbf{Q}": '\uD835\uDC10'
  "\\mathbf{R}": '\uD835\uDC11'
  "\\mathbf{S}": '\uD835\uDC12'
  "\\mathbf{T}": '\uD835\uDC13'
  "\\mathbf{U}": '\uD835\uDC14'
  "\\mathbf{V}": '\uD835\uDC15'
  "\\mathbf{W}": '\uD835\uDC16'
  "\\mathbf{X}": '\uD835\uDC17'
  "\\mathbf{Y}": '\uD835\uDC18'
  "\\mathbf{Z}": '\uD835\uDC19'
  "\\mathbf{a}": '\uD835\uDC1A'
  "\\mathbf{b}": '\uD835\uDC1B'
  "\\mathbf{c}": '\uD835\uDC1C'
  "\\mathbf{d}": '\uD835\uDC1D'
  "\\mathbf{e}": '\uD835\uDC1E'
  "\\mathbf{f}": '\uD835\uDC1F'
  "\\mathbf{g}": '\uD835\uDC20'
  "\\mathbf{h}": '\uD835\uDC21'
  "\\mathbf{i}": '\uD835\uDC22'
  "\\mathbf{j}": '\uD835\uDC23'
  "\\mathbf{k}": '\uD835\uDC24'
  "\\mathbf{l}": '\uD835\uDC25'
  "\\mathbf{m}": '\uD835\uDC26'
  "\\mathbf{n}": '\uD835\uDC27'
  "\\mathbf{o}": '\uD835\uDC28'
  "\\mathbf{p}": '\uD835\uDC29'
  "\\mathbf{q}": '\uD835\uDC2A'
  "\\mathbf{r}": '\uD835\uDC2B'
  "\\mathbf{s}": '\uD835\uDC2C'
  "\\mathbf{t}": '\uD835\uDC2D'
  "\\mathbf{u}": '\uD835\uDC2E'
  "\\mathbf{v}": '\uD835\uDC2F'
  "\\mathbf{w}": '\uD835\uDC30'
  "\\mathbf{x}": '\uD835\uDC31'
  "\\mathbf{y}": '\uD835\uDC32'
  "\\mathbf{z}": '\uD835\uDC33'
  "\\mathsl{A}": '\uD835\uDC34'
  "\\mathsl{B}": '\uD835\uDC35'
  "\\mathsl{C}": '\uD835\uDC36'
  "\\mathsl{D}": '\uD835\uDC37'
  "\\mathsl{E}": '\uD835\uDC38'
  "\\mathsl{F}": '\uD835\uDC39'
  "\\mathsl{G}": '\uD835\uDC3A'
  "\\mathsl{H}": '\uD835\uDC3B'
  "\\mathsl{I}": '\uD835\uDC3C'
  "\\mathsl{J}": '\uD835\uDC3D'
  "\\mathsl{K}": '\uD835\uDC3E'
  "\\mathsl{L}": '\uD835\uDC3F'
  "\\mathsl{M}": '\uD835\uDC40'
  "\\mathsl{N}": '\uD835\uDC41'
  "\\mathsl{O}": '\uD835\uDC42'
  "\\mathsl{P}": '\uD835\uDC43'
  "\\mathsl{Q}": '\uD835\uDC44'
  "\\mathsl{R}": '\uD835\uDC45'
  "\\mathsl{S}": '\uD835\uDC46'
  "\\mathsl{T}": '\uD835\uDC47'
  "\\mathsl{U}": '\uD835\uDC48'
  "\\mathsl{V}": '\uD835\uDC49'
  "\\mathsl{W}": '\uD835\uDC4A'
  "\\mathsl{X}": '\uD835\uDC4B'
  "\\mathsl{Y}": '\uD835\uDC4C'
  "\\mathsl{Z}": '\uD835\uDC4D'
  "\\mathsl{a}": '\uD835\uDC4E'
  "\\mathsl{b}": '\uD835\uDC4F'
  "\\mathsl{c}": '\uD835\uDC50'
  "\\mathsl{d}": '\uD835\uDC51'
  "\\mathsl{e}": '\uD835\uDC52'
  "\\mathsl{f}": '\uD835\uDC53'
  "\\mathsl{g}": '\uD835\uDC54'
  "\\mathsl{i}": '\uD835\uDC56'
  "\\mathsl{j}": '\uD835\uDC57'
  "\\mathsl{k}": '\uD835\uDC58'
  "\\mathsl{l}": '\uD835\uDC59'
  "\\mathsl{m}": '\uD835\uDC5A'
  "\\mathsl{n}": '\uD835\uDC5B'
  "\\mathsl{o}": '\uD835\uDC5C'
  "\\mathsl{p}": '\uD835\uDC5D'
  "\\mathsl{q}": '\uD835\uDC5E'
  "\\mathsl{r}": '\uD835\uDC5F'
  "\\mathsl{s}": '\uD835\uDC60'
  "\\mathsl{t}": '\uD835\uDC61'
  "\\mathsl{u}": '\uD835\uDC62'
  "\\mathsl{v}": '\uD835\uDC63'
  "\\mathsl{w}": '\uD835\uDC64'
  "\\mathsl{x}": '\uD835\uDC65'
  "\\mathsl{y}": '\uD835\uDC66'
  "\\mathsl{z}": '\uD835\uDC67'
  "\\mathbit{A}": '\uD835\uDC68'
  "\\mathbit{B}": '\uD835\uDC69'
  "\\mathbit{C}": '\uD835\uDC6A'
  "\\mathbit{D}": '\uD835\uDC6B'
  "\\mathbit{E}": '\uD835\uDC6C'
  "\\mathbit{F}": '\uD835\uDC6D'
  "\\mathbit{G}": '\uD835\uDC6E'
  "\\mathbit{H}": '\uD835\uDC6F'
  "\\mathbit{I}": '\uD835\uDC70'
  "\\mathbit{J}": '\uD835\uDC71'
  "\\mathbit{K}": '\uD835\uDC72'
  "\\mathbit{L}": '\uD835\uDC73'
  "\\mathbit{M}": '\uD835\uDC74'
  "\\mathbit{N}": '\uD835\uDC75'
  "\\mathbit{O}": '\uD835\uDC76'
  "\\mathbit{P}": '\uD835\uDC77'
  "\\mathbit{Q}": '\uD835\uDC78'
  "\\mathbit{R}": '\uD835\uDC79'
  "\\mathbit{S}": '\uD835\uDC7A'
  "\\mathbit{T}": '\uD835\uDC7B'
  "\\mathbit{U}": '\uD835\uDC7C'
  "\\mathbit{V}": '\uD835\uDC7D'
  "\\mathbit{W}": '\uD835\uDC7E'
  "\\mathbit{X}": '\uD835\uDC7F'
  "\\mathbit{Y}": '\uD835\uDC80'
  "\\mathbit{Z}": '\uD835\uDC81'
  "\\mathbit{a}": '\uD835\uDC82'
  "\\mathbit{b}": '\uD835\uDC83'
  "\\mathbit{c}": '\uD835\uDC84'
  "\\mathbit{d}": '\uD835\uDC85'
  "\\mathbit{e}": '\uD835\uDC86'
  "\\mathbit{f}": '\uD835\uDC87'
  "\\mathbit{g}": '\uD835\uDC88'
  "\\mathbit{h}": '\uD835\uDC89'
  "\\mathbit{i}": '\uD835\uDC8A'
  "\\mathbit{j}": '\uD835\uDC8B'
  "\\mathbit{k}": '\uD835\uDC8C'
  "\\mathbit{l}": '\uD835\uDC8D'
  "\\mathbit{m}": '\uD835\uDC8E'
  "\\mathbit{n}": '\uD835\uDC8F'
  "\\mathbit{o}": '\uD835\uDC90'
  "\\mathbit{p}": '\uD835\uDC91'
  "\\mathbit{q}": '\uD835\uDC92'
  "\\mathbit{r}": '\uD835\uDC93'
  "\\mathbit{s}": '\uD835\uDC94'
  "\\mathbit{t}": '\uD835\uDC95'
  "\\mathbit{u}": '\uD835\uDC96'
  "\\mathbit{v}": '\uD835\uDC97'
  "\\mathbit{w}": '\uD835\uDC98'
  "\\mathbit{x}": '\uD835\uDC99'
  "\\mathbit{y}": '\uD835\uDC9A'
  "\\mathbit{z}": '\uD835\uDC9B'
  "\\mathscr{A}": '\uD835\uDC9C'
  "\\mathscr{C}": '\uD835\uDC9E'
  "\\mathscr{D}": '\uD835\uDC9F'
  "\\mathscr{G}": '\uD835\uDCA2'
  "\\mathscr{J}": '\uD835\uDCA5'
  "\\mathscr{K}": '\uD835\uDCA6'
  "\\mathscr{N}": '\uD835\uDCA9'
  "\\mathscr{O}": '\uD835\uDCAA'
  "\\mathscr{P}": '\uD835\uDCAB'
  "\\mathscr{Q}": '\uD835\uDCAC'
  "\\mathscr{S}": '\uD835\uDCAE'
  "\\mathscr{T}": '\uD835\uDCAF'
  "\\mathscr{U}": '\uD835\uDCB0'
  "\\mathscr{V}": '\uD835\uDCB1'
  "\\mathscr{W}": '\uD835\uDCB2'
  "\\mathscr{X}": '\uD835\uDCB3'
  "\\mathscr{Y}": '\uD835\uDCB4'
  "\\mathscr{Z}": '\uD835\uDCB5'
  "\\mathscr{a}": '\uD835\uDCB6'
  "\\mathscr{b}": '\uD835\uDCB7'
  "\\mathscr{c}": '\uD835\uDCB8'
  "\\mathscr{d}": '\uD835\uDCB9'
  "\\mathscr{f}": '\uD835\uDCBB'
  "\\mathscr{h}": '\uD835\uDCBD'
  "\\mathscr{i}": '\uD835\uDCBE'
  "\\mathscr{j}": '\uD835\uDCBF'
  "\\mathscr{k}": '\uD835\uDCC0'
  "\\mathscr{m}": '\uD835\uDCC2'
  "\\mathscr{n}": '\uD835\uDCC3'
  "\\mathscr{p}": '\uD835\uDCC5'
  "\\mathscr{q}": '\uD835\uDCC6'
  "\\mathscr{r}": '\uD835\uDCC7'
  "\\mathscr{s}": '\uD835\uDCC8'
  "\\mathscr{t}": '\uD835\uDCC9'
  "\\mathscr{u}": '\uD835\uDCCA'
  "\\mathscr{v}": '\uD835\uDCCB'
  "\\mathscr{w}": '\uD835\uDCCC'
  "\\mathscr{x}": '\uD835\uDCCD'
  "\\mathscr{y}": '\uD835\uDCCE'
  "\\mathscr{z}": '\uD835\uDCCF'
  "\\mathmit{A}": '\uD835\uDCD0'
  "\\mathmit{B}": '\uD835\uDCD1'
  "\\mathmit{C}": '\uD835\uDCD2'
  "\\mathmit{D}": '\uD835\uDCD3'
  "\\mathmit{E}": '\uD835\uDCD4'
  "\\mathmit{F}": '\uD835\uDCD5'
  "\\mathmit{G}": '\uD835\uDCD6'
  "\\mathmit{H}": '\uD835\uDCD7'
  "\\mathmit{I}": '\uD835\uDCD8'
  "\\mathmit{J}": '\uD835\uDCD9'
  "\\mathmit{K}": '\uD835\uDCDA'
  "\\mathmit{L}": '\uD835\uDCDB'
  "\\mathmit{M}": '\uD835\uDCDC'
  "\\mathmit{N}": '\uD835\uDCDD'
  "\\mathmit{O}": '\uD835\uDCDE'
  "\\mathmit{P}": '\uD835\uDCDF'
  "\\mathmit{Q}": '\uD835\uDCE0'
  "\\mathmit{R}": '\uD835\uDCE1'
  "\\mathmit{S}": '\uD835\uDCE2'
  "\\mathmit{T}": '\uD835\uDCE3'
  "\\mathmit{U}": '\uD835\uDCE4'
  "\\mathmit{V}": '\uD835\uDCE5'
  "\\mathmit{W}": '\uD835\uDCE6'
  "\\mathmit{X}": '\uD835\uDCE7'
  "\\mathmit{Y}": '\uD835\uDCE8'
  "\\mathmit{Z}": '\uD835\uDCE9'
  "\\mathmit{a}": '\uD835\uDCEA'
  "\\mathmit{b}": '\uD835\uDCEB'
  "\\mathmit{c}": '\uD835\uDCEC'
  "\\mathmit{d}": '\uD835\uDCED'
  "\\mathmit{e}": '\uD835\uDCEE'
  "\\mathmit{f}": '\uD835\uDCEF'
  "\\mathmit{g}": '\uD835\uDCF0'
  "\\mathmit{h}": '\uD835\uDCF1'
  "\\mathmit{i}": '\uD835\uDCF2'
  "\\mathmit{j}": '\uD835\uDCF3'
  "\\mathmit{k}": '\uD835\uDCF4'
  "\\mathmit{l}": '\uD835\uDCF5'
  "\\mathmit{m}": '\uD835\uDCF6'
  "\\mathmit{n}": '\uD835\uDCF7'
  "\\mathmit{o}": '\uD835\uDCF8'
  "\\mathmit{p}": '\uD835\uDCF9'
  "\\mathmit{q}": '\uD835\uDCFA'
  "\\mathmit{r}": '\uD835\uDCFB'
  "\\mathmit{s}": '\uD835\uDCFC'
  "\\mathmit{t}": '\uD835\uDCFD'
  "\\mathmit{u}": '\uD835\uDCFE'
  "\\mathmit{v}": '\uD835\uDCFF'
  "\\mathmit{w}": '\uD835\uDD00'
  "\\mathmit{x}": '\uD835\uDD01'
  "\\mathmit{y}": '\uD835\uDD02'
  "\\mathmit{z}": '\uD835\uDD03'
  "\\mathfrak{A}": '\uD835\uDD04'
  "\\mathfrak{B}": '\uD835\uDD05'
  "\\mathfrak{D}": '\uD835\uDD07'
  "\\mathfrak{E}": '\uD835\uDD08'
  "\\mathfrak{F}": '\uD835\uDD09'
  "\\mathfrak{G}": '\uD835\uDD0A'
  "\\mathfrak{J}": '\uD835\uDD0D'
  "\\mathfrak{K}": '\uD835\uDD0E'
  "\\mathfrak{L}": '\uD835\uDD0F'
  "\\mathfrak{M}": '\uD835\uDD10'
  "\\mathfrak{N}": '\uD835\uDD11'
  "\\mathfrak{O}": '\uD835\uDD12'
  "\\mathfrak{P}": '\uD835\uDD13'
  "\\mathfrak{Q}": '\uD835\uDD14'
  "\\mathfrak{S}": '\uD835\uDD16'
  "\\mathfrak{T}": '\uD835\uDD17'
  "\\mathfrak{U}": '\uD835\uDD18'
  "\\mathfrak{V}": '\uD835\uDD19'
  "\\mathfrak{W}": '\uD835\uDD1A'
  "\\mathfrak{X}": '\uD835\uDD1B'
  "\\mathfrak{Y}": '\uD835\uDD1C'
  "\\mathfrak{a}": '\uD835\uDD1E'
  "\\mathfrak{b}": '\uD835\uDD1F'
  "\\mathfrak{c}": '\uD835\uDD20'
  "\\mathfrak{d}": '\uD835\uDD21'
  "\\mathfrak{e}": '\uD835\uDD22'
  "\\mathfrak{f}": '\uD835\uDD23'
  "\\mathfrak{g}": '\uD835\uDD24'
  "\\mathfrak{h}": '\uD835\uDD25'
  "\\mathfrak{i}": '\uD835\uDD26'
  "\\mathfrak{j}": '\uD835\uDD27'
  "\\mathfrak{k}": '\uD835\uDD28'
  "\\mathfrak{l}": '\uD835\uDD29'
  "\\mathfrak{m}": '\uD835\uDD2A'
  "\\mathfrak{n}": '\uD835\uDD2B'
  "\\mathfrak{o}": '\uD835\uDD2C'
  "\\mathfrak{p}": '\uD835\uDD2D'
  "\\mathfrak{q}": '\uD835\uDD2E'
  "\\mathfrak{r}": '\uD835\uDD2F'
  "\\mathfrak{s}": '\uD835\uDD30'
  "\\mathfrak{t}": '\uD835\uDD31'
  "\\mathfrak{u}": '\uD835\uDD32'
  "\\mathfrak{v}": '\uD835\uDD33'
  "\\mathfrak{w}": '\uD835\uDD34'
  "\\mathfrak{x}": '\uD835\uDD35'
  "\\mathfrak{y}": '\uD835\uDD36'
  "\\mathfrak{z}": '\uD835\uDD37'
  "\\mathbb{A}": '\uD835\uDD38'
  "\\mathbb{B}": '\uD835\uDD39'
  "\\mathbb{D}": '\uD835\uDD3B'
  "\\mathbb{E}": '\uD835\uDD3C'
  "\\mathbb{F}": '\uD835\uDD3D'
  "\\mathbb{G}": '\uD835\uDD3E'
  "\\mathbb{I}": '\uD835\uDD40'
  "\\mathbb{J}": '\uD835\uDD41'
  "\\mathbb{K}": '\uD835\uDD42'
  "\\mathbb{L}": '\uD835\uDD43'
  "\\mathbb{M}": '\uD835\uDD44'
  "\\mathbb{O}": '\uD835\uDD46'
  "\\mathbb{S}": '\uD835\uDD4A'
  "\\mathbb{T}": '\uD835\uDD4B'
  "\\mathbb{U}": '\uD835\uDD4C'
  "\\mathbb{V}": '\uD835\uDD4D'
  "\\mathbb{W}": '\uD835\uDD4E'
  "\\mathbb{X}": '\uD835\uDD4F'
  "\\mathbb{Y}": '\uD835\uDD50'
  "\\mathbb{a}": '\uD835\uDD52'
  "\\mathbb{b}": '\uD835\uDD53'
  "\\mathbb{c}": '\uD835\uDD54'
  "\\mathbb{d}": '\uD835\uDD55'
  "\\mathbb{e}": '\uD835\uDD56'
  "\\mathbb{f}": '\uD835\uDD57'
  "\\mathbb{g}": '\uD835\uDD58'
  "\\mathbb{h}": '\uD835\uDD59'
  "\\mathbb{i}": '\uD835\uDD5A'
  "\\mathbb{j}": '\uD835\uDD5B'
  "\\mathbb{k}": '\uD835\uDD5C'
  "\\mathbb{l}": '\uD835\uDD5D'
  "\\mathbb{m}": '\uD835\uDD5E'
  "\\mathbb{n}": '\uD835\uDD5F'
  "\\mathbb{o}": '\uD835\uDD60'
  "\\mathbb{p}": '\uD835\uDD61'
  "\\mathbb{q}": '\uD835\uDD62'
  "\\mathbb{r}": '\uD835\uDD63'
  "\\mathbb{s}": '\uD835\uDD64'
  "\\mathbb{t}": '\uD835\uDD65'
  "\\mathbb{u}": '\uD835\uDD66'
  "\\mathbb{v}": '\uD835\uDD67'
  "\\mathbb{w}": '\uD835\uDD68'
  "\\mathbb{x}": '\uD835\uDD69'
  "\\mathbb{y}": '\uD835\uDD6A'
  "\\mathbb{z}": '\uD835\uDD6B'
  "\\mathslbb{A}": '\uD835\uDD6C'
  "\\mathslbb{B}": '\uD835\uDD6D'
  "\\mathslbb{C}": '\uD835\uDD6E'
  "\\mathslbb{D}": '\uD835\uDD6F'
  "\\mathslbb{E}": '\uD835\uDD70'
  "\\mathslbb{F}": '\uD835\uDD71'
  "\\mathslbb{G}": '\uD835\uDD72'
  "\\mathslbb{H}": '\uD835\uDD73'
  "\\mathslbb{I}": '\uD835\uDD74'
  "\\mathslbb{J}": '\uD835\uDD75'
  "\\mathslbb{K}": '\uD835\uDD76'
  "\\mathslbb{L}": '\uD835\uDD77'
  "\\mathslbb{M}": '\uD835\uDD78'
  "\\mathslbb{N}": '\uD835\uDD79'
  "\\mathslbb{O}": '\uD835\uDD7A'
  "\\mathslbb{P}": '\uD835\uDD7B'
  "\\mathslbb{Q}": '\uD835\uDD7C'
  "\\mathslbb{R}": '\uD835\uDD7D'
  "\\mathslbb{S}": '\uD835\uDD7E'
  "\\mathslbb{T}": '\uD835\uDD7F'
  "\\mathslbb{U}": '\uD835\uDD80'
  "\\mathslbb{V}": '\uD835\uDD81'
  "\\mathslbb{W}": '\uD835\uDD82'
  "\\mathslbb{X}": '\uD835\uDD83'
  "\\mathslbb{Y}": '\uD835\uDD84'
  "\\mathslbb{Z}": '\uD835\uDD85'
  "\\mathslbb{a}": '\uD835\uDD86'
  "\\mathslbb{b}": '\uD835\uDD87'
  "\\mathslbb{c}": '\uD835\uDD88'
  "\\mathslbb{d}": '\uD835\uDD89'
  "\\mathslbb{e}": '\uD835\uDD8A'
  "\\mathslbb{f}": '\uD835\uDD8B'
  "\\mathslbb{g}": '\uD835\uDD8C'
  "\\mathslbb{h}": '\uD835\uDD8D'
  "\\mathslbb{i}": '\uD835\uDD8E'
  "\\mathslbb{j}": '\uD835\uDD8F'
  "\\mathslbb{k}": '\uD835\uDD90'
  "\\mathslbb{l}": '\uD835\uDD91'
  "\\mathslbb{m}": '\uD835\uDD92'
  "\\mathslbb{n}": '\uD835\uDD93'
  "\\mathslbb{o}": '\uD835\uDD94'
  "\\mathslbb{p}": '\uD835\uDD95'
  "\\mathslbb{q}": '\uD835\uDD96'
  "\\mathslbb{r}": '\uD835\uDD97'
  "\\mathslbb{s}": '\uD835\uDD98'
  "\\mathslbb{t}": '\uD835\uDD99'
  "\\mathslbb{u}": '\uD835\uDD9A'
  "\\mathslbb{v}": '\uD835\uDD9B'
  "\\mathslbb{w}": '\uD835\uDD9C'
  "\\mathslbb{x}": '\uD835\uDD9D'
  "\\mathslbb{y}": '\uD835\uDD9E'
  "\\mathslbb{z}": '\uD835\uDD9F'
  "\\mathsf{A}": '\uD835\uDDA0'
  "\\mathsf{B}": '\uD835\uDDA1'
  "\\mathsf{C}": '\uD835\uDDA2'
  "\\mathsf{D}": '\uD835\uDDA3'
  "\\mathsf{E}": '\uD835\uDDA4'
  "\\mathsf{F}": '\uD835\uDDA5'
  "\\mathsf{G}": '\uD835\uDDA6'
  "\\mathsf{H}": '\uD835\uDDA7'
  "\\mathsf{I}": '\uD835\uDDA8'
  "\\mathsf{J}": '\uD835\uDDA9'
  "\\mathsf{K}": '\uD835\uDDAA'
  "\\mathsf{L}": '\uD835\uDDAB'
  "\\mathsf{M}": '\uD835\uDDAC'
  "\\mathsf{N}": '\uD835\uDDAD'
  "\\mathsf{O}": '\uD835\uDDAE'
  "\\mathsf{P}": '\uD835\uDDAF'
  "\\mathsf{Q}": '\uD835\uDDB0'
  "\\mathsf{R}": '\uD835\uDDB1'
  "\\mathsf{S}": '\uD835\uDDB2'
  "\\mathsf{T}": '\uD835\uDDB3'
  "\\mathsf{U}": '\uD835\uDDB4'
  "\\mathsf{V}": '\uD835\uDDB5'
  "\\mathsf{W}": '\uD835\uDDB6'
  "\\mathsf{X}": '\uD835\uDDB7'
  "\\mathsf{Y}": '\uD835\uDDB8'
  "\\mathsf{Z}": '\uD835\uDDB9'
  "\\mathsf{a}": '\uD835\uDDBA'
  "\\mathsf{b}": '\uD835\uDDBB'
  "\\mathsf{c}": '\uD835\uDDBC'
  "\\mathsf{d}": '\uD835\uDDBD'
  "\\mathsf{e}": '\uD835\uDDBE'
  "\\mathsf{f}": '\uD835\uDDBF'
  "\\mathsf{g}": '\uD835\uDDC0'
  "\\mathsf{h}": '\uD835\uDDC1'
  "\\mathsf{i}": '\uD835\uDDC2'
  "\\mathsf{j}": '\uD835\uDDC3'
  "\\mathsf{k}": '\uD835\uDDC4'
  "\\mathsf{l}": '\uD835\uDDC5'
  "\\mathsf{m}": '\uD835\uDDC6'
  "\\mathsf{n}": '\uD835\uDDC7'
  "\\mathsf{o}": '\uD835\uDDC8'
  "\\mathsf{p}": '\uD835\uDDC9'
  "\\mathsf{q}": '\uD835\uDDCA'
  "\\mathsf{r}": '\uD835\uDDCB'
  "\\mathsf{s}": '\uD835\uDDCC'
  "\\mathsf{t}": '\uD835\uDDCD'
  "\\mathsf{u}": '\uD835\uDDCE'
  "\\mathsf{v}": '\uD835\uDDCF'
  "\\mathsf{w}": '\uD835\uDDD0'
  "\\mathsf{x}": '\uD835\uDDD1'
  "\\mathsf{y}": '\uD835\uDDD2'
  "\\mathsf{z}": '\uD835\uDDD3'
  "\\mathsfbf{A}": '\uD835\uDDD4'
  "\\mathsfbf{B}": '\uD835\uDDD5'
  "\\mathsfbf{C}": '\uD835\uDDD6'
  "\\mathsfbf{D}": '\uD835\uDDD7'
  "\\mathsfbf{E}": '\uD835\uDDD8'
  "\\mathsfbf{F}": '\uD835\uDDD9'
  "\\mathsfbf{G}": '\uD835\uDDDA'
  "\\mathsfbf{H}": '\uD835\uDDDB'
  "\\mathsfbf{I}": '\uD835\uDDDC'
  "\\mathsfbf{J}": '\uD835\uDDDD'
  "\\mathsfbf{K}": '\uD835\uDDDE'
  "\\mathsfbf{L}": '\uD835\uDDDF'
  "\\mathsfbf{M}": '\uD835\uDDE0'
  "\\mathsfbf{N}": '\uD835\uDDE1'
  "\\mathsfbf{O}": '\uD835\uDDE2'
  "\\mathsfbf{P}": '\uD835\uDDE3'
  "\\mathsfbf{Q}": '\uD835\uDDE4'
  "\\mathsfbf{R}": '\uD835\uDDE5'
  "\\mathsfbf{S}": '\uD835\uDDE6'
  "\\mathsfbf{T}": '\uD835\uDDE7'
  "\\mathsfbf{U}": '\uD835\uDDE8'
  "\\mathsfbf{V}": '\uD835\uDDE9'
  "\\mathsfbf{W}": '\uD835\uDDEA'
  "\\mathsfbf{X}": '\uD835\uDDEB'
  "\\mathsfbf{Y}": '\uD835\uDDEC'
  "\\mathsfbf{Z}": '\uD835\uDDED'
  "\\mathsfbf{a}": '\uD835\uDDEE'
  "\\mathsfbf{b}": '\uD835\uDDEF'
  "\\mathsfbf{c}": '\uD835\uDDF0'
  "\\mathsfbf{d}": '\uD835\uDDF1'
  "\\mathsfbf{e}": '\uD835\uDDF2'
  "\\mathsfbf{f}": '\uD835\uDDF3'
  "\\mathsfbf{g}": '\uD835\uDDF4'
  "\\mathsfbf{h}": '\uD835\uDDF5'
  "\\mathsfbf{i}": '\uD835\uDDF6'
  "\\mathsfbf{j}": '\uD835\uDDF7'
  "\\mathsfbf{k}": '\uD835\uDDF8'
  "\\mathsfbf{l}": '\uD835\uDDF9'
  "\\mathsfbf{m}": '\uD835\uDDFA'
  "\\mathsfbf{n}": '\uD835\uDDFB'
  "\\mathsfbf{o}": '\uD835\uDDFC'
  "\\mathsfbf{p}": '\uD835\uDDFD'
  "\\mathsfbf{q}": '\uD835\uDDFE'
  "\\mathsfbf{r}": '\uD835\uDDFF'
  "\\mathsfbf{s}": '\uD835\uDE00'
  "\\mathsfbf{t}": '\uD835\uDE01'
  "\\mathsfbf{u}": '\uD835\uDE02'
  "\\mathsfbf{v}": '\uD835\uDE03'
  "\\mathsfbf{w}": '\uD835\uDE04'
  "\\mathsfbf{x}": '\uD835\uDE05'
  "\\mathsfbf{y}": '\uD835\uDE06'
  "\\mathsfbf{z}": '\uD835\uDE07'
  "\\mathsfsl{A}": '\uD835\uDE08'
  "\\mathsfsl{B}": '\uD835\uDE09'
  "\\mathsfsl{C}": '\uD835\uDE0A'
  "\\mathsfsl{D}": '\uD835\uDE0B'
  "\\mathsfsl{E}": '\uD835\uDE0C'
  "\\mathsfsl{F}": '\uD835\uDE0D'
  "\\mathsfsl{G}": '\uD835\uDE0E'
  "\\mathsfsl{H}": '\uD835\uDE0F'
  "\\mathsfsl{I}": '\uD835\uDE10'
  "\\mathsfsl{J}": '\uD835\uDE11'
  "\\mathsfsl{K}": '\uD835\uDE12'
  "\\mathsfsl{L}": '\uD835\uDE13'
  "\\mathsfsl{M}": '\uD835\uDE14'
  "\\mathsfsl{N}": '\uD835\uDE15'
  "\\mathsfsl{O}": '\uD835\uDE16'
  "\\mathsfsl{P}": '\uD835\uDE17'
  "\\mathsfsl{Q}": '\uD835\uDE18'
  "\\mathsfsl{R}": '\uD835\uDE19'
  "\\mathsfsl{S}": '\uD835\uDE1A'
  "\\mathsfsl{T}": '\uD835\uDE1B'
  "\\mathsfsl{U}": '\uD835\uDE1C'
  "\\mathsfsl{V}": '\uD835\uDE1D'
  "\\mathsfsl{W}": '\uD835\uDE1E'
  "\\mathsfsl{X}": '\uD835\uDE1F'
  "\\mathsfsl{Y}": '\uD835\uDE20'
  "\\mathsfsl{Z}": '\uD835\uDE21'
  "\\mathsfsl{a}": '\uD835\uDE22'
  "\\mathsfsl{b}": '\uD835\uDE23'
  "\\mathsfsl{c}": '\uD835\uDE24'
  "\\mathsfsl{d}": '\uD835\uDE25'
  "\\mathsfsl{e}": '\uD835\uDE26'
  "\\mathsfsl{f}": '\uD835\uDE27'
  "\\mathsfsl{g}": '\uD835\uDE28'
  "\\mathsfsl{h}": '\uD835\uDE29'
  "\\mathsfsl{i}": '\uD835\uDE2A'
  "\\mathsfsl{j}": '\uD835\uDE2B'
  "\\mathsfsl{k}": '\uD835\uDE2C'
  "\\mathsfsl{l}": '\uD835\uDE2D'
  "\\mathsfsl{m}": '\uD835\uDE2E'
  "\\mathsfsl{n}": '\uD835\uDE2F'
  "\\mathsfsl{o}": '\uD835\uDE30'
  "\\mathsfsl{p}": '\uD835\uDE31'
  "\\mathsfsl{q}": '\uD835\uDE32'
  "\\mathsfsl{r}": '\uD835\uDE33'
  "\\mathsfsl{s}": '\uD835\uDE34'
  "\\mathsfsl{t}": '\uD835\uDE35'
  "\\mathsfsl{u}": '\uD835\uDE36'
  "\\mathsfsl{v}": '\uD835\uDE37'
  "\\mathsfsl{w}": '\uD835\uDE38'
  "\\mathsfsl{x}": '\uD835\uDE39'
  "\\mathsfsl{y}": '\uD835\uDE3A'
  "\\mathsfsl{z}": '\uD835\uDE3B'
  "\\mathsfbfsl{A}": '\uD835\uDE3C'
  "\\mathsfbfsl{B}": '\uD835\uDE3D'
  "\\mathsfbfsl{C}": '\uD835\uDE3E'
  "\\mathsfbfsl{D}": '\uD835\uDE3F'
  "\\mathsfbfsl{E}": '\uD835\uDE40'
  "\\mathsfbfsl{F}": '\uD835\uDE41'
  "\\mathsfbfsl{G}": '\uD835\uDE42'
  "\\mathsfbfsl{H}": '\uD835\uDE43'
  "\\mathsfbfsl{I}": '\uD835\uDE44'
  "\\mathsfbfsl{J}": '\uD835\uDE45'
  "\\mathsfbfsl{K}": '\uD835\uDE46'
  "\\mathsfbfsl{L}": '\uD835\uDE47'
  "\\mathsfbfsl{M}": '\uD835\uDE48'
  "\\mathsfbfsl{N}": '\uD835\uDE49'
  "\\mathsfbfsl{O}": '\uD835\uDE4A'
  "\\mathsfbfsl{P}": '\uD835\uDE4B'
  "\\mathsfbfsl{Q}": '\uD835\uDE4C'
  "\\mathsfbfsl{R}": '\uD835\uDE4D'
  "\\mathsfbfsl{S}": '\uD835\uDE4E'
  "\\mathsfbfsl{T}": '\uD835\uDE4F'
  "\\mathsfbfsl{U}": '\uD835\uDE50'
  "\\mathsfbfsl{V}": '\uD835\uDE51'
  "\\mathsfbfsl{W}": '\uD835\uDE52'
  "\\mathsfbfsl{X}": '\uD835\uDE53'
  "\\mathsfbfsl{Y}": '\uD835\uDE54'
  "\\mathsfbfsl{Z}": '\uD835\uDE55'
  "\\mathsfbfsl{a}": '\uD835\uDE56'
  "\\mathsfbfsl{b}": '\uD835\uDE57'
  "\\mathsfbfsl{c}": '\uD835\uDE58'
  "\\mathsfbfsl{d}": '\uD835\uDE59'
  "\\mathsfbfsl{e}": '\uD835\uDE5A'
  "\\mathsfbfsl{f}": '\uD835\uDE5B'
  "\\mathsfbfsl{g}": '\uD835\uDE5C'
  "\\mathsfbfsl{h}": '\uD835\uDE5D'
  "\\mathsfbfsl{i}": '\uD835\uDE5E'
  "\\mathsfbfsl{j}": '\uD835\uDE5F'
  "\\mathsfbfsl{k}": '\uD835\uDE60'
  "\\mathsfbfsl{l}": '\uD835\uDE61'
  "\\mathsfbfsl{m}": '\uD835\uDE62'
  "\\mathsfbfsl{n}": '\uD835\uDE63'
  "\\mathsfbfsl{o}": '\uD835\uDE64'
  "\\mathsfbfsl{p}": '\uD835\uDE65'
  "\\mathsfbfsl{q}": '\uD835\uDE66'
  "\\mathsfbfsl{r}": '\uD835\uDE67'
  "\\mathsfbfsl{s}": '\uD835\uDE68'
  "\\mathsfbfsl{t}": '\uD835\uDE69'
  "\\mathsfbfsl{u}": '\uD835\uDE6A'
  "\\mathsfbfsl{v}": '\uD835\uDE6B'
  "\\mathsfbfsl{w}": '\uD835\uDE6C'
  "\\mathsfbfsl{x}": '\uD835\uDE6D'
  "\\mathsfbfsl{y}": '\uD835\uDE6E'
  "\\mathsfbfsl{z}": '\uD835\uDE6F'
  "\\mathtt{A}": '\uD835\uDE70'
  "\\mathtt{B}": '\uD835\uDE71'
  "\\mathtt{C}": '\uD835\uDE72'
  "\\mathtt{D}": '\uD835\uDE73'
  "\\mathtt{E}": '\uD835\uDE74'
  "\\mathtt{F}": '\uD835\uDE75'
  "\\mathtt{G}": '\uD835\uDE76'
  "\\mathtt{H}": '\uD835\uDE77'
  "\\mathtt{I}": '\uD835\uDE78'
  "\\mathtt{J}": '\uD835\uDE79'
  "\\mathtt{K}": '\uD835\uDE7A'
  "\\mathtt{L}": '\uD835\uDE7B'
  "\\mathtt{M}": '\uD835\uDE7C'
  "\\mathtt{N}": '\uD835\uDE7D'
  "\\mathtt{O}": '\uD835\uDE7E'
  "\\mathtt{P}": '\uD835\uDE7F'
  "\\mathtt{Q}": '\uD835\uDE80'
  "\\mathtt{R}": '\uD835\uDE81'
  "\\mathtt{S}": '\uD835\uDE82'
  "\\mathtt{T}": '\uD835\uDE83'
  "\\mathtt{U}": '\uD835\uDE84'
  "\\mathtt{V}": '\uD835\uDE85'
  "\\mathtt{W}": '\uD835\uDE86'
  "\\mathtt{X}": '\uD835\uDE87'
  "\\mathtt{Y}": '\uD835\uDE88'
  "\\mathtt{Z}": '\uD835\uDE89'
  "\\mathtt{a}": '\uD835\uDE8A'
  "\\mathtt{b}": '\uD835\uDE8B'
  "\\mathtt{c}": '\uD835\uDE8C'
  "\\mathtt{d}": '\uD835\uDE8D'
  "\\mathtt{e}": '\uD835\uDE8E'
  "\\mathtt{f}": '\uD835\uDE8F'
  "\\mathtt{g}": '\uD835\uDE90'
  "\\mathtt{h}": '\uD835\uDE91'
  "\\mathtt{i}": '\uD835\uDE92'
  "\\mathtt{j}": '\uD835\uDE93'
  "\\mathtt{k}": '\uD835\uDE94'
  "\\mathtt{l}": '\uD835\uDE95'
  "\\mathtt{m}": '\uD835\uDE96'
  "\\mathtt{n}": '\uD835\uDE97'
  "\\mathtt{o}": '\uD835\uDE98'
  "\\mathtt{p}": '\uD835\uDE99'
  "\\mathtt{q}": '\uD835\uDE9A'
  "\\mathtt{r}": '\uD835\uDE9B'
  "\\mathtt{s}": '\uD835\uDE9C'
  "\\mathtt{t}": '\uD835\uDE9D'
  "\\mathtt{u}": '\uD835\uDE9E'
  "\\mathtt{v}": '\uD835\uDE9F'
  "\\mathtt{w}": '\uD835\uDEA0'
  "\\mathtt{x}": '\uD835\uDEA1'
  "\\mathtt{y}": '\uD835\uDEA2'
  "\\mathtt{z}": '\uD835\uDEA3'
  "\\mathbf{\\Alpha}": '\uD835\uDEA8'
  "\\mathbf{\\Beta}": '\uD835\uDEA9'
  "\\mathbf{\\Gamma}": '\uD835\uDEAA'
  "\\mathbf{\\Delta}": '\uD835\uDEAB'
  "\\mathbf{\\Epsilon}": '\uD835\uDEAC'
  "\\mathbf{\\Zeta}": '\uD835\uDEAD'
  "\\mathbf{\\Eta}": '\uD835\uDEAE'
  "\\mathbf{\\Theta}": '\uD835\uDEAF'
  "\\mathbf{\\Iota}": '\uD835\uDEB0'
  "\\mathbf{\\Kappa}": '\uD835\uDEB1'
  "\\mathbf{\\Lambda}": '\uD835\uDEB2'
  "\\mathbf{\\Xi}": '\uD835\uDEB5'
  "\\mathbf{\\Pi}": '\uD835\uDEB7'
  "\\mathbf{\\Rho}": '\uD835\uDEB8'
  "\\mathbf{\\vartheta}": '\uD835\uDEB9'
  "\\mathbf{\\Sigma}": '\uD835\uDEBA'
  "\\mathbf{\\Tau}": '\uD835\uDEBB'
  "\\mathbf{\\Upsilon}": '\uD835\uDEBC'
  "\\mathbf{\\Phi}": '\uD835\uDEBD'
  "\\mathbf{\\Chi}": '\uD835\uDEBE'
  "\\mathbf{\\Psi}": '\uD835\uDEBF'
  "\\mathbf{\\Omega}": '\uD835\uDEC0'
  "\\mathbf{\\nabla}": '\uD835\uDEC1'
  "\\mathbf{\\theta}": '\uD835\uDEC9'
  "\\mathbf{\\varsigma}": '\uD835\uDED3'
  "\\in": '\uD835\uDEDC'
  "\\mathbf{\\varkappa}": '\uD835\uDEDE'
  "\\mathbf{\\phi}": '\uD835\uDEDF'
  "\\mathbf{\\varrho}": '\uD835\uDEE0'
  "\\mathbf{\\varpi}": '\uD835\uDEE1'
  "\\mathsl{\\Alpha}": '\uD835\uDEE2'
  "\\mathsl{\\Beta}": '\uD835\uDEE3'
  "\\mathsl{\\Gamma}": '\uD835\uDEE4'
  "\\mathsl{\\Delta}": '\uD835\uDEE5'
  "\\mathsl{\\Epsilon}": '\uD835\uDEE6'
  "\\mathsl{\\Zeta}": '\uD835\uDEE7'
  "\\mathsl{\\Eta}": '\uD835\uDEE8'
  "\\mathsl{\\Theta}": '\uD835\uDEE9'
  "\\mathsl{\\Iota}": '\uD835\uDEEA'
  "\\mathsl{\\Kappa}": '\uD835\uDEEB'
  "\\mathsl{\\Lambda}": '\uD835\uDEEC'
  "\\mathsl{\\Xi}": '\uD835\uDEEF'
  "\\mathsl{\\Pi}": '\uD835\uDEF1'
  "\\mathsl{\\Rho}": '\uD835\uDEF2'
  "\\mathsl{\\vartheta}": '\uD835\uDEF3'
  "\\mathsl{\\Sigma}": '\uD835\uDEF4'
  "\\mathsl{\\Tau}": '\uD835\uDEF5'
  "\\mathsl{\\Upsilon}": '\uD835\uDEF6'
  "\\mathsl{\\Phi}": '\uD835\uDEF7'
  "\\mathsl{\\Chi}": '\uD835\uDEF8'
  "\\mathsl{\\Psi}": '\uD835\uDEF9'
  "\\mathsl{\\Omega}": '\uD835\uDEFA'
  "\\mathsl{\\nabla}": '\uD835\uDEFB'
  "\\mathsl{\\varsigma}": '\uD835\uDF0D'
  "\\mathsl{\\varkappa}": '\uD835\uDF18'
  "\\mathsl{\\phi}": '\uD835\uDF19'
  "\\mathsl{\\varrho}": '\uD835\uDF1A'
  "\\mathsl{\\varpi}": '\uD835\uDF1B'
  "\\mathbit{\\Alpha}": '\uD835\uDF1C'
  "\\mathbit{\\Beta}": '\uD835\uDF1D'
  "\\mathbit{\\Gamma}": '\uD835\uDF1E'
  "\\mathbit{\\Delta}": '\uD835\uDF1F'
  "\\mathbit{\\Epsilon}": '\uD835\uDF20'
  "\\mathbit{\\Zeta}": '\uD835\uDF21'
  "\\mathbit{\\Eta}": '\uD835\uDF22'
  "\\mathbit{\\Theta}": '\uD835\uDF23'
  "\\mathbit{\\Iota}": '\uD835\uDF24'
  "\\mathbit{\\Kappa}": '\uD835\uDF25'
  "\\mathbit{\\Lambda}": '\uD835\uDF26'
  "\\mathbit{\\Xi}": '\uD835\uDF29'
  "\\mathbit{\\Pi}": '\uD835\uDF2B'
  "\\mathbit{\\Rho}": '\uD835\uDF2C'
  "\\mathbit{\\Sigma}": '\uD835\uDF2E'
  "\\mathbit{\\Tau}": '\uD835\uDF2F'
  "\\mathbit{\\Upsilon}": '\uD835\uDF30'
  "\\mathbit{\\Phi}": '\uD835\uDF31'
  "\\mathbit{\\Chi}": '\uD835\uDF32'
  "\\mathbit{\\Psi}": '\uD835\uDF33'
  "\\mathbit{\\Omega}": '\uD835\uDF34'
  "\\mathbit{\\nabla}": '\uD835\uDF35'
  "\\mathbit{\\varsigma}": '\uD835\uDF47'
  "\\mathbit{\\vartheta}": '\uD835\uDF51'
  "\\mathbit{\\varkappa}": '\uD835\uDF52'
  "\\mathbit{\\phi}": '\uD835\uDF53'
  "\\mathbit{\\varrho}": '\uD835\uDF54'
  "\\mathbit{\\varpi}": '\uD835\uDF55'
  "\\mathsfbf{\\Alpha}": '\uD835\uDF56'
  "\\mathsfbf{\\Beta}": '\uD835\uDF57'
  "\\mathsfbf{\\Gamma}": '\uD835\uDF58'
  "\\mathsfbf{\\Delta}": '\uD835\uDF59'
  "\\mathsfbf{\\Epsilon}": '\uD835\uDF5A'
  "\\mathsfbf{\\Zeta}": '\uD835\uDF5B'
  "\\mathsfbf{\\Eta}": '\uD835\uDF5C'
  "\\mathsfbf{\\Theta}": '\uD835\uDF5D'
  "\\mathsfbf{\\Iota}": '\uD835\uDF5E'
  "\\mathsfbf{\\Kappa}": '\uD835\uDF5F'
  "\\mathsfbf{\\Lambda}": '\uD835\uDF60'
  "\\mathsfbf{\\Xi}": '\uD835\uDF63'
  "\\mathsfbf{\\Pi}": '\uD835\uDF65'
  "\\mathsfbf{\\Rho}": '\uD835\uDF66'
  "\\mathsfbf{\\vartheta}": '\uD835\uDF67'
  "\\mathsfbf{\\Sigma}": '\uD835\uDF68'
  "\\mathsfbf{\\Tau}": '\uD835\uDF69'
  "\\mathsfbf{\\Upsilon}": '\uD835\uDF6A'
  "\\mathsfbf{\\Phi}": '\uD835\uDF6B'
  "\\mathsfbf{\\Chi}": '\uD835\uDF6C'
  "\\mathsfbf{\\Psi}": '\uD835\uDF6D'
  "\\mathsfbf{\\Omega}": '\uD835\uDF6E'
  "\\mathsfbf{\\nabla}": '\uD835\uDF6F'
  "\\mathsfbf{\\varsigma}": '\uD835\uDF81'
  "\\mathsfbf{\\varkappa}": '\uD835\uDF8C'
  "\\mathsfbf{\\phi}": '\uD835\uDF8D'
  "\\mathsfbf{\\varrho}": '\uD835\uDF8E'
  "\\mathsfbf{\\varpi}": '\uD835\uDF8F'
  "\\mathsfbfsl{\\Alpha}": '\uD835\uDF90'
  "\\mathsfbfsl{\\Beta}": '\uD835\uDF91'
  "\\mathsfbfsl{\\Gamma}": '\uD835\uDF92'
  "\\mathsfbfsl{\\Delta}": '\uD835\uDF93'
  "\\mathsfbfsl{\\Epsilon}": '\uD835\uDF94'
  "\\mathsfbfsl{\\Zeta}": '\uD835\uDF95'
  "\\mathsfbfsl{\\Eta}": '\uD835\uDF96'
  "\\mathsfbfsl{\\vartheta}": '\uD835\uDF97'
  "\\mathsfbfsl{\\Iota}": '\uD835\uDF98'
  "\\mathsfbfsl{\\Kappa}": '\uD835\uDF99'
  "\\mathsfbfsl{\\Lambda}": '\uD835\uDF9A'
  "\\mathsfbfsl{\\Xi}": '\uD835\uDF9D'
  "\\mathsfbfsl{\\Pi}": '\uD835\uDF9F'
  "\\mathsfbfsl{\\Rho}": '\uD835\uDFA0'
  "\\mathsfbfsl{\\Sigma}": '\uD835\uDFA2'
  "\\mathsfbfsl{\\Tau}": '\uD835\uDFA3'
  "\\mathsfbfsl{\\Upsilon}": '\uD835\uDFA4'
  "\\mathsfbfsl{\\Phi}": '\uD835\uDFA5'
  "\\mathsfbfsl{\\Chi}": '\uD835\uDFA6'
  "\\mathsfbfsl{\\Psi}": '\uD835\uDFA7'
  "\\mathsfbfsl{\\Omega}": '\uD835\uDFA8'
  "\\mathsfbfsl{\\nabla}": '\uD835\uDFA9'
  "\\mathsfbfsl{\\varsigma}": '\uD835\uDFBB'
  "\\mathsfbfsl{\\varkappa}": '\uD835\uDFC6'
  "\\mathsfbfsl{\\phi}": '\uD835\uDFC7'
  "\\mathsfbfsl{\\varrho}": '\uD835\uDFC8'
  "\\mathsfbfsl{\\varpi}": '\uD835\uDFC9'
  "\\mathbf{0}": '\uD835\uDFCE'
  "\\mathbf{1}": '\uD835\uDFCF'
  "\\mathbf{2}": '\uD835\uDFD0'
  "\\mathbf{3}": '\uD835\uDFD1'
  "\\mathbf{4}": '\uD835\uDFD2'
  "\\mathbf{5}": '\uD835\uDFD3'
  "\\mathbf{6}": '\uD835\uDFD4'
  "\\mathbf{7}": '\uD835\uDFD5'
  "\\mathbf{8}": '\uD835\uDFD6'
  "\\mathbf{9}": '\uD835\uDFD7'
  "\\mathbb{0}": '\uD835\uDFD8'
  "\\mathbb{1}": '\uD835\uDFD9'
  "\\mathbb{2}": '\uD835\uDFDA'
  "\\mathbb{3}": '\uD835\uDFDB'
  "\\mathbb{4}": '\uD835\uDFDC'
  "\\mathbb{5}": '\uD835\uDFDD'
  "\\mathbb{6}": '\uD835\uDFDE'
  "\\mathbb{7}": '\uD835\uDFDF'
  "\\mathbb{8}": '\uD835\uDFE0'
  "\\mathbb{9}": '\uD835\uDFE1'
  "\\mathsf{0}": '\uD835\uDFE2'
  "\\mathsf{1}": '\uD835\uDFE3'
  "\\mathsf{2}": '\uD835\uDFE4'
  "\\mathsf{3}": '\uD835\uDFE5'
  "\\mathsf{4}": '\uD835\uDFE6'
  "\\mathsf{5}": '\uD835\uDFE7'
  "\\mathsf{6}": '\uD835\uDFE8'
  "\\mathsf{7}": '\uD835\uDFE9'
  "\\mathsf{8}": '\uD835\uDFEA'
  "\\mathsf{9}": '\uD835\uDFEB'
  "\\mathsfbf{0}": '\uD835\uDFEC'
  "\\mathsfbf{1}": '\uD835\uDFED'
  "\\mathsfbf{2}": '\uD835\uDFEE'
  "\\mathsfbf{3}": '\uD835\uDFEF'
  "\\mathsfbf{4}": '\uD835\uDFF0'
  "\\mathsfbf{5}": '\uD835\uDFF1'
  "\\mathsfbf{6}": '\uD835\uDFF2'
  "\\mathsfbf{7}": '\uD835\uDFF3'
  "\\mathsfbf{8}": '\uD835\uDFF4'
  "\\mathsfbf{9}": '\uD835\uDFF5'
  "\\mathtt{0}": '\uD835\uDFF6'
  "\\mathtt{1}": '\uD835\uDFF7'
  "\\mathtt{2}": '\uD835\uDFF8'
  "\\mathtt{3}": '\uD835\uDFF9'
  "\\mathtt{4}": '\uD835\uDFFA'
  "\\mathtt{5}": '\uD835\uDFFB'
  "\\mathtt{6}": '\uD835\uDFFC'
  "\\mathtt{7}": '\uD835\uDFFD'
  "\\mathtt{8}": '\uD835\uDFFE'
  "\\mathtt{9}": '\uD835\uDFFF'

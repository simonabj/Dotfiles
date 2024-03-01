local abbrev = require('LuaSnip.abbrev')

return {
  abbrev.s(
    { trig = "beamer-template", desc = "Template for my custom latex beamer presentation" },
    abbrev.fmta(
[[
% !TEX program = xelatex
% vim:foldmethod=marker:foldmarker=<<<,>>>

\documentclass[compress,aspectratio=169]{beamer}

\usepackage[english]{babel}
\usepackage{metalogo}
\usepackage{listings}
\usepackage{fontspec}
\usepackage{unicode-math}
\usepackage[theme=nord,charsperline=60,linenumbers]{clisting}

\usetheme{Nord}

\setmainfont{Roboto}
\setmonofont{JuliaMono}

\title{()}
\subtitle{()}
\author{()}
\institute{}
\date{()}

\begin{document}

\begin{frame}[plain,noframenumbering]
    \maketitle
\end{frame}

\end{document}
]],
      { abbrev.i(1), abbrev.i(2), abbrev.i(3), abbrev.i(0) },
      { delimiters="()"}
    )
  ),
}

local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
  s(
    { trig = "eq", desc = "A LaTeX equation environment" },
    fmta(
      [[
        \begin{equation*}
            <>
        \end{equation*}
      ]],
      { i(0) }
    )
  ),
  s(
    { trig = "env", snippetType = "autosnippet" },
    fmta(
      [[
        \begin{<>}
            <>
        \end{<>}
      ]],
      { i(1), i(0), rep(1) }
    )
  ),
  s(
    { trig = "split", desc = "Columns environment with 2 columns" },
    fmta(
      [[
      \begin{columns}
          \begin{column}{0.5\textwidth}
              <>
          \end{column}
          \begin{column}{0.5\textwidth}
          \end{column}
      \end{columns}
      ]],
      { i(0) }
    )
  ),
  s(
    { trig = "frame", desc = "Beamer frame" },
    fmt(
      [[
      \begin{frame} % <<< ()
          \frametitle{()}
          ()
      \end{frame} % >>>
      ]],
      { rep(1), i(1), i(0) },
      { delimiters = "()" }
    )
  ),
  s(
    { trig = "framecode", desc = "Beamer frame with code" },
    fmta(
      [[
      \begin{frame}[fragile] % <<< ()
          \frametitle{()}
          ()
      \end{frame}
      % >>>
      ]],
      { rep(1), i(1), i(0) },
      { delimiters = "()" }
    )
  ),
  s(
    { trig = "jlcode", desc = "LaTeX Julia Listings"},
    fmta(
      [[
      \begin{jllisting}[gobble=<>]
          <>
      \end{jllisting}
      ]],
      { i(1), i(0)}
    )
  ),
  s(
    { trig = "fig", desc = "LaTeX Figure"},
    fmta(
      [[
      \begin{figure}
          \includegraphics[width=<>\columnwidth]{"<>"}
      \end{figure}
      ]],
      { i(1), i(2) }
    )
  )
}

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
    {trig="ff", desc="A LaTex equation fraction"},
    fmt("\\frac{<>}{<>}", {i(1), i(2)}, {delimiters = "<>"})
  ),
  s(
    {trig="tt", desc="LaTeX '\\texttt{}'"},
    fmta("\\texttt{<>}", {i(1)})
  ),
  s(
    {trig="s", desc="LaTeX '\\sum_{}^{}{}'"},
    fmta("\\sum^{<>}_{<>}{<>}", {i(1),i(2),i(3)})
  )
}

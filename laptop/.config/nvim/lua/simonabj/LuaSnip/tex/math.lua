-- vim:foldmethod=marker
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


-- {{{ Text transforms
  
  s(
    {trig="tt", desc="LaTeX '\\texttt{}'"},
    fmta("\\texttt{<>}", {i(1)})
  ),
  s(
  {trig="t", desc="LaTeX '\\text{}'"},
    fmta("\\text{<>}", {i(1)})
  ),

-- }}}

-- {{{ Big operations
  s(
    {trig="ff", desc="A LaTex equation fraction"},
    fmt("\\frac{<>}{<>}", {i(1), i(2)}, {delimiters = "<>"})
  ),
  s(
    {trig="sum", desc="LaTeX '\\sum^{}_{}{}'"},
    fmta("\\sum^{<>}_{<>}{<>}", {i(1), i(2), i(0)})
  ),
  s(
    {trig="prod", desc="LaTeX '\\prod^{}_{}{}'"},
    fmta("\\prod^{<>}_{<>}{<>}", {i(1), i(2), i(0)})
  ),
  s(
    {trig="pff", desc="LaTeX Math Partial Fraction"},
    fmta("\\frac{\\partial <>}{\\partial <>}", {i(1), i(2)})
  ),
  s(
    {trig="int", desc="LaTeX integral"},
    fmta("\\int^{<>}_{<>}{<>}", {i(1), i(2), i(0)})
  ),
-- }}}

-- {{{ Closures
  s(
    {trig="()", desc="LaTeX Math ()"},
    fmta("\\left(<>\\right)", {i(1)})
  ),
  s(
    {trig="{}", desc="LaTeX Math {}"},
    fmta("\\left\\{<>\\right\\}", {i(1)})
  ),
  s(
    {trig="[]", desc="LaTeX Math []"},
    fmta("\\left[<>\\right]", {i(1)})
  ),
  s(
    {trig="hat", desc="LaTeX Math hat"},
    fmta("\\widehat{<>}", {i(1)})
  ),
  s(
    {trig="underb", desc="LaTeX Math underbrace{}_{}"},
    fmta("\\underbrace{<>}_{<>}", {i(1), i(2)})
  ),

-- }}}
}

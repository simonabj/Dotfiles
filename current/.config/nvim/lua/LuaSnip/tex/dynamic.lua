local abbrev = require('LuaSnip.abbrev')

return {
    abbrev.s(
        { trig = "tii", dscr = { "Expands 'tii' into LaTeX's textit{} command." } },
        abbrev.fmta("\\textit{<>}",
            {
                abbrev.d(1, abbrev.get_visual),
            }
        )
    ),
}

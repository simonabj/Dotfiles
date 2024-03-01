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
    -- Small letters
    s({ trig = ";a", snippetType = "autosnippet" },
        {
            t("\\alpha"),
        }
    ),
    s({ trig = ";b", snippetType = "autosnippet" },
        {
            t("\\beta"),
        }
    ),
    s({ trig = ";g", snippetType = "autosnippet" },
        {
            t("\\gamma"),
        }
    ),
    s({ trig = ";d", snippetType = "autosnippet" },
        {
            t("\\delta"),
        }
    ),
    s({ trig = ";e", snippetType = "autosnippet" },
        {
            t("\\epsilon"),
        }
    ),
    s({ trig = ";z", snippetType = "autosnippet" },
        {
            t("\\zeta"),
        }
    ),
    s({ trig = ";h", snippetType = "autosnippet" },
        {
            t("\\eta"),
        }
    ),
    s({ trig = ";j", snippetType = "autosnippet" },
        {
            t("\\theta"),
        }
    ),
    s({ trig = ";i", snippetType = "autosnippet" },
        {
            t("\\iota"),
        }
    ),
    s({ trig = ";k", snippetType = "autosnippet" },
        {
            t("\\kappa"),
        }
    ),
    s({ trig = ";l", snippetType = "autosnippet" },
        {
            t("\\lambda"),
        }
    ),
    s({ trig = ";m", snippetType = "autosnippet" },
        {
            t("\\mu"),
        }
    ),
    s({ trig = ";n", snippetType = "autosnippet" },
        {
            t("\\nu"),
        }
    ),
    s({ trig = ";x", snippetType = "autosnippet" },
        {
            t("\\xi"),
        }
    ),
    s({ trig = ";o", snippetType = "autosnippet" },
        {
            t("\\omicron"),
        }
    ),
    s({ trig = ";p", snippetType = "autosnippet" },
        {
            t("\\pi"),
        }
    ),
    s({ trig = ";r", snippetType = "autosnippet" },
        {
            t("\\rho"),
        }
    ),
    s({ trig = ";s", snippetType = "autosnippet" },
        {
            t("\\sigma"),
        }
    ),
    s({ trig = ";t", snippetType = "autosnippet" },
        {
            t("\\tau"),
        }
    ),
    s({ trig = ";y", snippetType = "autosnippet" },
        {
            t("\\ypsilon"),
        }
    ),
    s({ trig = ";q", snippetType = "autosnippet" },
        {
            t("\\phi"),
        }
    ),
    s({ trig = ";c", snippetType = "autosnippet" },
        {
            t("\\chi"),
        }
    ),
    s({ trig = ";v", snippetType = "autosnippet" },
        {
            t("\\psi"),
        }
    ),
    s({ trig = ";w", snippetType = "autosnippet" },
        {
            t("\\omega"),
        }
    ),
    -- Capital Letters
    s({ trig = ";A", snippetType = "autosnippet" },
        {
            t("\\Alpha"),
        }
    ),
    s({ trig = ";B", snippetType = "autosnippet" },
        {
            t("\\Beta"),
        }
    ),
    s({ trig = ";G", snippetType = "autosnippet" },
        {
            t("\\Gamma"),
        }
    ),
    s({ trig = ";D", snippetType = "autosnippet" },
        {
            t("\\Delta"),
        }
    ),
    s({ trig = ";E", snippetType = "autosnippet" },
        {
            t("\\Epsilon"),
        }
    ),
    s({ trig = ";Z", snippetType = "autosnippet" },
        {
            t("\\Zeta"),
        }
    ),
    s({ trig = ";H", snippetType = "autosnippet" },
        {
            t("\\Eta"),
        }
    ),
    s({ trig = ";J", snippetType = "autosnippet" },
        {
            t("\\Theta"),
        }
    ),
    s({ trig = ";I", snippetType = "autosnippet" },
        {
            t("\\Iota"),
        }
    ),
    s({ trig = ";K", snippetType = "autosnippet" },
        {
            t("\\Kappa"),
        }
    ),
    s({ trig = ";L", snippetType = "autosnippet" },
        {
            t("\\Lambda"),
        }
    ),
    s({ trig = ";M", snippetType = "autosnippet" },
        {
            t("\\Mu"),
        }
    ),
    s({ trig = ";N", snippetType = "autosnippet" },
        {
            t("\\Nu"),
        }
    ),
    s({ trig = ";X", snippetType = "autosnippet" },
        {
            t("\\Xi"),
        }
    ),
    s({ trig = ";O", snippetType = "autosnippet" },
        {
            t("\\Omicron"),
        }
    ),
    s({ trig = ";P", snippetType = "autosnippet" },
        {
            t("\\Pi"),
        }
    ),
    s({ trig = ";R", snippetType = "autosnippet" },
        {
            t("\\Rho"),
        }
    ),
    s({ trig = ";S", snippetType = "autosnippet" },
        {
            t("\\Sigma"),
        }
    ),
    s({ trig = ";T", snippetType = "autosnippet" },
        {
            t("\\Tau"),
        }
    ),
    s({ trig = ";Y", snippetType = "autosnippet" },
        {
            t("\\Ypsilon"),
        }
    ),
    s({ trig = ";Q", snippetType = "autosnippet" },
        {
            t("\\Phi"),
        }
    ),
    s({ trig = ";C", snippetType = "autosnippet" },
        {
            t("\\Chi"),
        }
    ),
    s({ trig = ";V", snippetType = "autosnippet" },
        {
            t("\\Psi"),
        }
    ),
    s({ trig = ";W", snippetType = "autosnippet" },
        {
            t("\\Omega"),
        }
    ),
}

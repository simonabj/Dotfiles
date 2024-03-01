ls = require("luasnip")

return {
    s = ls.snippet,
    sn = ls.snippet_node,
    t = ls.text_node,
    i = ls.insert_node,
    f = ls.function_node,
    d = ls.dynamic_node,
    fmt = require("luasnip.extras.fmt").fmt,
    fmta = require("luasnip.extras.fmt").fmta,
    rep = require("luasnip.extras").rep,
    get_visual = function(args, parent)
        if (#parent.snippet.env.LS_SELECT_RAW > 0) then
            return ls.snippet_node(nil, ls.insert_node(1, parent.snippet.env.LS_SELECT_RAW))
        else
            return ls.snippet_node(nil, ls.insert_node(1))
        end
    end,
}

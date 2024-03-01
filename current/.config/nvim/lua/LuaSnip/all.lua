local abbr = require("LuaSnip.abbrev")

return {
    -- A snippet that expands the trigger "hi" into the string "Hello, world!".
  -- abbr.s(
  --   { -- Table 1: snippet parameters
  --     trig="hi",
  --     dscr="An autotriggering snippet that expands 'hi' into 'Hello, world!'",
  --     regTrig=false,
  --     priority=100,
  --     snippetType="autosnippet"
  --   },
  --   { -- Table 2: snippet nodes (don't worry about this for now---we'll cover nodes shortly)
  --     abbr.t("Hello, world!"), -- A single text node
  --   }
  --   -- Table 3, the advanced snippet options, is left blank.
  -- ),
  -- To return multiple snippets, use one `return` statement per snippet file
  -- and return a table of Lua snippets.
  -- abbr.s(
  --   { trig = "foo" },
  --  { abbr.t("Another snippet.") }
  -- ),
}



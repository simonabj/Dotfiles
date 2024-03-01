require('luasnip.loaders.from_vscode').lazy_load()
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/lua/LuaSnip"})

require("luasnip").config.set_config({ -- Setting LuaSnip config

  -- Enable autotriggered snippets
  enable_autosnippets = true,

  -- Enable update_event for rep nodes
  update_events = 'TextChanged,TextChangedI',

  -- Use Tab (or some other key if you prefer) to trigger visual selection
  store_selection_keys = "<Tab>",
})



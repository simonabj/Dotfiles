local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>ha", mark.add_file, { desc = "Harpoon: Add" })
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Harpoon: Quick Menu"})

-- vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end, { desc = "Harpoon: Open File 1" })
-- vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end, { desc = "Harpoon: Open File 2" })
-- vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end, { desc = "Harpoon: Open File 3" })
-- vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end, { desc = "Harpoon: Open File 4" })



local tabline = require("tabline")

vim.keymap.set("n", "<leader>tl", tabline.buffer_next, { desc = "Tabline: Next" })
vim.keymap.set("n", "<leader>th", tabline.buffer_previous, { desc = "Tabline: Previous"})

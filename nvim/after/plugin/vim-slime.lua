vim.g.slime_target = "tmux"

vim.g.slime_cell_delimeter="#%%"
vim.g.slime_paste_file = "$HOME/.slime_paste"
vim.g.slime_default_config = { socket_name = "default", target_pane = "{last}" }
vim.g.slime_dont_ask_default = 1
vim.g.slime_preserve_curpos = 0
vim.g.slime_no_mappings = 1
vim.g.slime_bracketed_paste = 1

-- Open terminal in split
vim.keymap.set("n", "<leader>ot", "<cmd>silent !tmux split -h<CR>", { silent = true, desc = "[O]pen [T]erminal" })
vim.keymap.set("n", "<leader>lr", "<Plug>SlimeLineSend", { desc = "Slime: Run Line"})
-- vim.keymap.set("n", "<leader>r", "<Plug>SlimeSendCell")

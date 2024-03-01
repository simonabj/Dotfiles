vim.g.mapleader = " "

local function map(mode, lhs, rhs, opts)
	vim.keymap.set(mode, lhs, rhs, opts)
end


-- Quick Save & Quit
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- Open Browser
vim.keymap.set("n", "<leader>pw", vim.cmd.Ex)

-- LazyGit
vim.keymap.set("n", "<leader>lg", ":LazyGit<CR>" )

-- Move selection up/down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Return cursor after append
vim.keymap.set("n", "J", "mzJ`z") 

-- Re-center cursor when scrolling up and down
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- 
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Close Current Buffer
vim.keymap.set("n", "<leader>cc", ":bd<CR>", { desc = "[C]lose [C]urrent buffer" })

-- Do not lose copy-buffer on remap
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Select inner fold
vim.keymap.set("n", "gaz", "[zjV]zk")

-- Delete to void
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Disable Q
vim.keymap.set("n", "Q", "<nop>")


-- LSP auto-formatting
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- Next and previous tab
-- vim.keymap.set("n", "<leader>k", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>cprev<CR>zz")

-- Substitute word under cursor
vim.keymap.set("n", "<leader>su", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Substitute"})



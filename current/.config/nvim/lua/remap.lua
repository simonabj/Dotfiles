vim.g.mapleader = " "

local function map(mode, lhs, rhs, opts)
    vim.keymap.set(mode, lhs, rhs, opts)
end

-- Quick Save & Quit
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- Open Browser
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- LazyGit
vim.keymap.set("n", "<leader>lg", ":LazyGit<CR>")

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
vim.keymap.set("n", "<leader><leader>", function()
    vim.lsp.buf.format {
        formatting_options = {
            tabSize = 4,
            insertSpaces = false,
        }
    }
end)

-- LSP actions
vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>ld", vim.lsp.buf.declaration)
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>li", vim.lsp.buf.implementation)
vim.keymap.set("n", "<leader>lsw", vim.lsp.buf.workspace_symbol)
vim.keymap.set("n", "<leader>lsd", vim.lsp.buf.document_symbol)
vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>lsu", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>lsh", vim.lsp.buf.signature_help)
vim.keymap.set("n", "<leader>lt", vim.lsp.buf.type_definition)

-- Compiler mappings
vim.keymap.set("n", "<leader>r", "<cmd>CompilerOpen<cr>")
vim.keymap.set("n", "<leader>R", "<cmd>CompilerToggleResults<cr>")

-- Next and previous tab
-- vim.keymap.set("n", "<leader>k", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>cprev<CR>zz")

-- Substitute word under cursor
vim.keymap.set("n", "<leader>su", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Substitute" })

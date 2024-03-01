vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Enda kulere endring

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- vim.opt.foldmethod = "marker"

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname = "@-@"

vim.opt.updatetime = 80

vim.opt.showmode = false
vim.opt.showcmd = false
vim.opt.ruler = false
vim.opt.hidden = true

vim.opt.filetype = "filetype-plugin-on"

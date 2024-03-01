vim.g.vimtex_view_general_viewer = 'okular'
vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
vim.g.vimtex_quickfix_ignore_filters = {
    "Package transparent Warning",
    "Overfull"
}

vim.g.vimtex_mappings_prefix = "<space>x"
vim.g.vimtex_imaps_enabled = 0

vim.g.vimtex_compiler_latexmk = {
    aux_dir = "build",
    build_dir = "build",
    options = {
        "-pdf",
        "-shell-escape",
        "-verbose",
        "-file-line-error",
        "-synctex=1",
        "-interaction=nonstopmode"
    }
}

vim.cmd[[
" Use `ai` and `ii` for the item text object
omap ai <Plug>(vimtex-am)
xmap ai <Plug>(vimtex-am)
omap ii <Plug>(vimtex-im)
xmap ii <Plug>(vimtex-im)

" Use `am` and `im` for the inline math text object
omap am <Plug>(vimtex-a$)
xmap am <Plug>(vimtex-a$)
omap im <Plug>(vimtex-i$)
xmap im <Plug>(vimtex-i$)
]]

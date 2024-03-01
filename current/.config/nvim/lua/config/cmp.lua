local cmp = require('cmp')
local luasnip = require('luasnip')

local has_words_before = function()
  local cursor = vim.api.nvim_win_get_cursor(0)
  return (vim.api.nvim_buf_get_lines(0, cursor[1] - 1, cursor[1], true)[1] or ''):sub(cursor[2], cursor[2]):match('%s') 
end

local select_opts = { behavior = cmp.SelectBehavior.Select }

cmp.setup {
    sources = {
        {name = "luasnip", keyword_length = 2},
        {name = "nvim_lsp", keyword_length = 1},
        {name = "buffer", keyword_length = 3},
        {name = "path"},
        {name = "copilot", keyword_length = 1},
        {name = "latex_symbols", keyword_length = 1, option = {strategy = 1}},
    },
    window = {
        documentation = cmp.config.window.bordered()
    },
    formatting = {
        fields = {'menu', 'abbr', 'kind'},
        format = function(entry, item)
            local menu_icon = {
                nvim_lsp = 'λ',
                luasnip = '⋗',
                buffer = 'Ω',
                path = '🖫',
                copilot = '',
                latex_symbols = 'Σ',
            }

            item.menu = menu_icon[entry.source.name]
            return item
        end,
    },
    mapping = {
        ["<CR>"] = cmp.mapping.confirm { select = true },

        ['<Up>'] = cmp.mapping.select_prev_item(select_opts),
        ['<M-k>'] = cmp.mapping.select_prev_item(select_opts),

        ['<Down>'] = cmp.mapping.select_next_item(select_opts),
        ['<M-j>'] = cmp.mapping.select_next_item(select_opts),

        ['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
        ['<C-n>'] = cmp.mapping.select_next_item(select_opts),

        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),

        ['<C-e>'] = cmp.mapping.abort(),

        ["<Tab>"] = cmp.mapping(function(fallback)
              local col = vim.fn.col('.') - 1

              if cmp.visible() then
                cmp.select_next_item(select_opts)
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
              elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
                fallback()
              else
                cmp.complete()
              end
        end, {"i", "s"}),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif  luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),
    },
    snippet = {
        expand = function(args)
            local luasnip = require("luasnip")
            if not luasnip then
                return
            end
            luasnip.lsp_expand(args.body)
        end,
    },
}

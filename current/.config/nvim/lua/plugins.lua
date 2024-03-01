return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        lazy = false,
        config = function()
            vim.cmd.colorscheme "catppuccin"
        end
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        config = function()
            require('telescope').setup {
                defaults = {
                    sorting_strategy = "ascending",
                    theme = "dropdown",
                    layout_strategy = "horizontal",
                    layout_config = {
                        horizontal = {
                            prompt_position = "top",
                        },
                    },
                    sorting_strategy = "ascending",
                    --- other configs

                    preview = {
                        mime_hook = function(filepath, bufnr, opts)
                            local is_image = function(filepath)
                                local image_extensions = { 'png', 'jpg' } -- Supported image formats
                                local split_path = vim.split(filepath:lower(), '.', { plain = true })
                                local extension = split_path[#split_path]
                                return vim.tbl_contains(image_extensions, extension)
                            end
                            if is_image(filepath) then
                                local term = vim.api.nvim_open_term(bufnr, {})
                                local function send_output(_, data, _)
                                    for _, d in ipairs(data) do
                                        vim.api.nvim_chan_send(term, d .. '\r\n')
                                    end
                                end
                                vim.fn.jobstart({
                                        'catimg', filepath -- Terminal image viewer command
                                    },
                                    { on_stdout = send_output, stdout_buffered = true, pty = true })
                            else
                                require("telescope.previewers.utils").set_preview_message(bufnr, opts.winid,
                                    "Binary cannot be previewed")
                            end
                        end
                    },
                    mappings = {
                    },
                }
            }
            local tsbuiltin = require("telescope.builtin")
            vim.keymap.set('n', '<leader>ff', tsbuiltin.find_files, {})
            vim.keymap.set('n', '<leader>fg', tsbuiltin.live_grep, {})
            vim.keymap.set('n', '<leader>fb', tsbuiltin.buffers, {})
            vim.keymap.set('n', '<leader>fh', tsbuiltin.help_tags, {})
            vim.keymap.set('n', '<leader>fo', tsbuiltin.oldfiles, {})
            vim.keymap.set('n', '<leader>/',
                function() tsbuiltin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown { winblend = 10, previewer = false, }) end,
                {})
        end
    },
    {
        "nvim-tree/nvim-web-devicons",
        config = function()
            require('nvim-web-devicons').setup {
                color_icons = true,
                default = true,
                strict = true,
            }
        end
    },
    { "nvim-lua/plenary.nvim" },
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        config = function()
            require('nvim-treesitter.configs').setup {
                ensure_installed = { "lua" },
                sync_install = false,
                auto_install = true,
            }
        end
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        config = function()
            require('nvim-treesitter.configs').setup {
                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = "@class.inner",
                            ["as"] = "@scope"
                        },
                        selection_modes = {
                            ['@parameter.outer'] = 'v',
                            ['@function.outer'] = 'V',
                            ['@class.outer'] = 'V',
                        },
                        include_surrounding_whitespace = true,
                    }
                }
            }
        end
    },
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        lazy = false,
    },
    {
        "zbirenbaum/copilot.lua",
        config = function() require("config.copilot") end
    },
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function() require("config.mason") end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function() require("config.mason-lspconfig") end
    },
    {
        "neovim/nvim-lspconfig",
        config = function() require('config.lspconfig') end
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },
    {
        'hrsh7th/nvim-cmp',
        config = function() require('config.cmp') end,
    },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'hrsh7th/cmp-path' },
    { 'kdheepak/cmp-latex-symbols' },
    {
        "zbirenbaum/copilot-cmp",
        config = function() require("copilot_cmp").setup() end
    },
    { "rafamadriz/friendly-snippets" },
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp",
        --config = function() require('config.snippets') end,
        config = function() require('config.snippets') end,
        dependencies = {
            "hrsh7th/nvim-cmp",
            "rafamadriz/friendly-snippets"
        }
    },
    {
        'lervag/vimtex'
    },
    { 
        'jpalardy/vim-slime',
        config = function()
            vim.g.slime_target = "kitty"
        end,
    },
    {
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
    {
        'mbbill/undotree',
        keys = {
            { "<leader>u", vim.cmd.UndotreeToggle },
        }
    },
    {
        -- This plugin
        "Zeioth/compiler.nvim",
        cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
        dependencies = { "stevearc/overseer.nvim" },
        opts = {},
    },
    {
        -- The task runner we use
        "stevearc/overseer.nvim",
        commit = "3047ede61cc1308069ad1184c0d447ebee92d749",
        cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
        opts = {
            task_list = {
                direction = "bottom",
                min_height = 15,
                max_height = 25,
                default_detail = 1,
                bindings = { ["q"] = function() vim.cmd("OverseerClose") end },
            },
        }
    }
}

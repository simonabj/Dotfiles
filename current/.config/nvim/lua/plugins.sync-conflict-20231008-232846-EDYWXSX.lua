return {
    {	
		"catppuccin/nvim", name="catppuccin", priority=1000, lazy = false,
        config = function()
            vim.cmd.colorscheme "catppuccin"
        end
	},
	{
		 'nvim-telescope/telescope.nvim', tag = '0.1.2',
         config = function ()
            require('telescope').setup {
                mappings = {

                },
            }

            local tsbuiltin = require("telescope.builtin")
            vim.keymap.set('n', '<leader>ff', tsbuiltin.find_files, {})
            vim.keymap.set('n', '<leader>fg', tsbuiltin.live_grep, {})
            vim.keymap.set('n', '<leader>fb', tsbuiltin.buffers, {})
            vim.keymap.set('n', '<leader>fh', tsbuiltin.help_tags, {})
            vim.keymap.set('n', '<leader>fo', tsbuiltin.oldfiles, {})
            vim.keymap.set('n', '<leader>/', function() tsbuiltin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown { winblend = 10, previewer = false, }) end, {})
    	end
	}, 
    {
        "nvim-tree/nvim-web-devicons",
        config = function()
            require('nvim-web-devicons').setup {
                color_icons = true;
                default = true;
                strict = true;
            }
        end
    },
    {  "nvim-lua/plenary.nvim" },
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        config = function()
            require('nvim-treesitter.configs').setup {
                ensure_installed = {"lua"},
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
        "williamboman/mason.nvim",
        lazy = false,
        config = function() 
	    require("mason").setup {
            registries = {
                "github:mason-org/mason-registry",
            },
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
    	}
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
		require("mason-lspconfig").setup {
		}
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function() 
        end
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
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp"
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
             {"<leader>u", vim.cmd.UndotreeToggle }, 
         }
    },
}

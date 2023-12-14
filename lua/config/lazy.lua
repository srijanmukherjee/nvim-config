require('lazy').setup({
    -- Git
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb',
    'lewis6991/gitsigns.nvim',

    -- Themes
    {
        'catppuccin/nvim',
        name = 'catppuccin'
    },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true,
        opts = {}
    },

    -- ui
    'nvim-lualine/lualine.nvim',

    -- Fuzzy finder (files, lsp, etc)
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                build = 'make',
                cond = function()
                    return vim.fn.executable 'make' == 1
                end,
            },
        },
    },

    -- Highlight, edit, and navigate code
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
        build = ':TSUpdate',
    },

    -- Dashboard
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        }
    },

    -- LSP Configuration and plugins
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            { 'j-hui/fidget.nvim', opts = {} },
            'folke/neodev.nvim',
        },
    },

    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            -- Snippet Engine & its associated nvim-cmp source
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',

            -- Adds LSP completion capabilities
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',

            -- Adds a number of user-friendly snippets
            'rafamadriz/friendly-snippets',
        },
    },

    -- Adds vscode like pictogram in nvim-cmp
    'onsails/lspkind.nvim',

    -- UI for lsp
    'nvimdev/lspsaga.nvim',

    -- Null-ls
    'jose-elias-alvarez/null-ls.nvim',

    -- Inc rename
    {
        "smjonas/inc-rename.nvim",
        opts = {}
    },

    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            routes = {
                filter = {
                    event = "notify",
                    find = "No information available",
                },
                opts = { skip = true }
            },
            presets = {
                lsp_doc_border = true
            }
        },
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },

        -- TODO: extract this
        config = function()
            require("noice").setup({
                lsp = {
                    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
                    override = {
                        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                        ["vim.lsp.util.stylize_markdown"] = true,
                        ["cmp.entry.get_documentation"] = true,
                    },
                },

                -- you can enable a preset for easier configuration
                presets = {
                    bottom_search = true,     -- use a classic bottom cmdline for search
                    command_palette = true,   -- position the cmdline and popupmenu together
                    long_message_to_split = true, -- long messages will be sent to a split
                    inc_rename = false,       -- enables an input dialog for inc-rename.nvim
                    lsp_doc_border = false,   -- add a border to hover docs and signature help
                },

                cmdline = {
                    format = {
                        cmdline = { pattern = "^:", icon = "", lang = "vim" },
                    }
                },
                views = {
                    cmdline_popup = {
                        border = {
                            style = "rounded",
                            padding = { 0, 1 },
                        },
                        filter_options = {},
                    },
                },
            })
        end

    },

    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',

    -- Animations
    {
        "echasnovski/mini.animate",
        event = "VeryLazy",
        opts = function(_, opts)
            opts.scroll = {
                enable = false
            }
        end,
    },

    -- Display diagnostics
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {}
    },

    -- Useful plugin to show you pending keybinds.
    { 'folke/which-key.nvim',  opts = {} },

    -- Add indentation guides even on blank lines
    {
        'lukas-reineke/indent-blankline.nvim',
        main = 'ibl',
        opts = {
            exclude = {
                filetypes = { "dashboard" }
            }
        },
    },

    -- "gc" to comment visual regions/lines
    { 'numToStr/Comment.nvim', opts = {} },

    -- Autopair brackets
    "windwp/nvim-autopairs",
    "windwp/nvim-ts-autotag",

    -- File tree
    {
        "nvim-neo-tree/neo-tree.nvim",
        version = "*",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
        opts = {}
    },

    -- Bufferline
    { 'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons' }
})

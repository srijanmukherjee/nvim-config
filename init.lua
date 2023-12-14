vim.loader.enable()

-- Set <space> as the leader key
-- See `:help mapleader`
-- This needs to be done before initializing the plugins
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('bootstrap')
require("config.lazy")
require("config.gitsigns")
require("config.telescope")

require("theme")
require("globals")
require("keymap")

-- load after setting theme
require("config.treesitter")
require("config.lsp")
require("config._lspkind")
require("config._lspsaga")
require("config._cmp")
require("config._bufferline")
require("config.autopair")
require("config.nullls")
require("config.ui")

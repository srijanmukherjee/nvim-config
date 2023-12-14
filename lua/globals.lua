-- TODO: divide into groups and add comments
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
-- vim.opt.fileencoding = 'utf-8'
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
-- vim.opt.scrolloff = 10
vim.opt.shell = 'zsh'
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ai = true -- auto indent
vim.opt.si = true -- smart indent
vim.opt.wrap = false -- no line wrapping
vim.opt.wildignore:append { '*/node_modules/*' }
vim.opt.background = "dark"
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders

-- Unsure
-- vim.opt.backup = false

-- line numbering
vim.wo.number = true
vim.wo.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and neovim
vim.o.clipboard = 'unnamedplus'

-- Use termguicolors
vim.o.termguicolors = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Set highlight on search
vim.o.hlsearch = false

-- Save undo history
vim.o.undofile = true

-- Enable break indent
vim.o.breakindent = true

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

vim.opt.cursorline = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5

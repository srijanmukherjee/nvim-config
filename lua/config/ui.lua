require('lualine').setup({
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = '|',
        section_separators = { left = '', right = '' },
    }
})

local arts = require("arts")
require('dashboard').setup({
    theme = 'hyper',
    config = {
        header = arts[4]
    }
})

require('lspsaga').setup({})

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})

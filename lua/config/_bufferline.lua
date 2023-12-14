require("bufferline").setup({
    options = {
        mode = 'tabs',
        separator = 'slant',
        always_show_bufferline = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        color_icons = true
    },
})

vim.api.nvim_set_keymap('n', '<Tab>', '<Cmd>BufferLineCycleNext<cr>', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<cr>', {})
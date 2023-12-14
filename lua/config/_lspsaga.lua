local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.setup({
    server_filetype_map = {},
    lightbulb = {
        virtual_text = false
    }
})

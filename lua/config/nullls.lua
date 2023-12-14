local null_ls = require('null-ls')
null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.completion.spell,
    },
    on_attach = function()
        vim.api.nvim_create_autocmd("BufWritePost", {
            callback = function()
                vim.lsp.buf.format()
            end,
        })
    end,
})

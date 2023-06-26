require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "jedi_language_server" },
})

local on_attach = function (_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', '<leader>gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', '<leader>K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').jedi_language_server.setup {
    capabilities = capabilities,
}
require('lspconfig').lua_ls.setup {
    capabilities = capabilities,
}

local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})

lsp.on_attach(function(_, bufnr)
    local noremap = { buffer = bufnr, remap = false }
    local bind = vim.keymap.set

    bind('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', noremap)
    bind('i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', noremap)
    bind('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', noremap)
    bind('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', noremap)
    bind('n', '<leader>F', '<cmd>lua vim.lsp.buf.format()<CR>', noremap)
    bind('n', 'gr', '<cmd>Telescope lsp_references<CR>', noremap)
    bind('n', '<leader>la', '<cmd>lua vim.lsp.buf.code_action()<CR>', noremap)
    bind('n', 'gi', '<cmd>Telescope lsp_implementations<CR>', noremap)
    bind('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<CR>')
    bind('n', 'gb', '<C-o>', noremap)
end)

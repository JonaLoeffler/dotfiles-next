local lsp = require'lspconfig'

lsp.intelephense.setup{
    init_options =  {
        licenceKey = os.getenv('INTELEPHENSE_LICENSE_KEY'),
}}
lsp.vuels.setup{ }
lsp.pyright.setup{ }
lsp.r_language_server.setup{ }
lsp.tsserver.setup{ }
lsp.rust_analyzer.setup{ }


vim.keymap.set("n", "<silent>gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", "<silent>gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
vim.keymap.set("n", "<silent>gr", "<cmd>lua vim.lsp.buf.references()<CR>")
vim.keymap.set("n", "<silent>gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")

vim.keymap.set("n", "<silent>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
vim.keymap.set("n", "<silent>rr", "<cmd>lua vim.lsp.buf.rename()<CR>")

vim.keymap.set("n", "<silent>K", "<cmd>lua vim.lsp.buf.hover()<CR>")
vim.keymap.set("n", "<silent><C-h>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")

vim.keymap.set("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>")



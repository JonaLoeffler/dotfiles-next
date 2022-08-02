lua << END
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
lsp.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
END

nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>

nnoremap <silent> ca <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> rr <cmd>lua vim.lsp.buf.rename()<CR>

nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-h> <cmd>lua vim.lsp.buf.signature_help()<CR>

nnoremap <leader> f <cmd>lua vim.lsp.buf.formatting()<CR>

fun! LspLocationList()
    lua vim.diagnostic.setloclist({open = false, severity = {min=vim.diagnostic.severity.HINT}})
endfun

augroup THE_PRIMEAGEN_LSP
    autocmd!
    autocmd! BufWrite,BufEnter,InsertLeave * :call LspLocationList()
augroup END

" Format files that can be formatted by LSP on save
augroup FORMAT_LSP_FILETYPES
    autocmd!
    autocmd! BufWrite,BufEnter,InsertLeave *.php :lua vim.lsp.buf.formatting()
augroup END

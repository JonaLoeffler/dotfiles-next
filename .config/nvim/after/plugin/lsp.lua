local lsp = require 'lspconfig'

local on_attach = require 'jona.lsp'.on_attach

-- lsp.tsserver.setup {
--     on_attach = on_attach,
-- }
-- lsp.vuels.setup {
--     on_attach = on_attach,
-- }
lsp.volar.setup {
    on_attach = on_attach,
    filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json', 'cjs', 'mjs'},
    -- filetypes = {'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json', 'cjs', 'mjs'}
    cmd = { '/home/jona/LanguageServer/workspace/vue/packages/vue-language-server/bin/vue-language-server.js', '--stdio' }
}
lsp.pyright.setup {
    on_attach = on_attach,
}
lsp.r_language_server.setup {
    on_attach = on_attach,
}
lsp.rust_analyzer.setup {
    on_attach = on_attach,
}
lsp.intelephense.setup {
    on_attach = on_attach,
    init_options = {
        licenceKey = os.getenv('INTELEPHENSE_LICENSE_KEY'),
    }
}
lsp.hls.setup {
    on_attach = on_attach,
}
lsp.lua_ls.setup {
    on_attach = on_attach,
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { 'vim' },
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

return { on_attach }

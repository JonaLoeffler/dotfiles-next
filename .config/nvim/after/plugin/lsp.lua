local lsp = require 'lspconfig'

local on_attach = function(_, bufnr)
    local opts = { noremap = true, silent = true }
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "rr", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-h>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>f", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", opts)

    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
        group = vim.api.nvim_create_augroup("FormatLspFiletypes", {}),
        pattern = {"*.php", "*.rs", "*.hs"},
        callback = function()
            vim.lsp.buf.format({ async = true })
        end,
    })
end

lsp.vuels.setup {
    on_attach = on_attach,
}
lsp.pyright.setup {
    on_attach = on_attach,
}
lsp.r_language_server.setup {
    on_attach = on_attach,
}
lsp.tsserver.setup {
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

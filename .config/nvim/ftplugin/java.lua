local on_attach = require 'jona.lsp'.on_attach

local config = {
    cmd = {'jdtls'},
    on_attach = on_attach,
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    group = vim.api.nvim_create_augroup("ThePrimeagen", {}),
    pattern = '*',
    command = "%s/\\s\\+$//e"
})

vim.api.nvim_create_autocmd({ "BufReadPost", "FileReadPost" }, {
    group = vim.api.nvim_create_augroup("JMaguireTech", {}),
    pattern = '*',
    command = ":normal zR"
})

vim.api.nvim_create_autocmd({ "BufWritePre", "BufEnter", "InsertLeave" }, {
    group = vim.api.nvim_create_augroup("ThePrimeagenLsp", {}),
    pattern = "*",
    callback = function()
        vim.diagnostic.setloclist({ open = false, severity = { min = vim.diagnostic.severity.HINT } })
    end,
})

local fileTypeSpecific = vim.api.nvim_create_augroup("FileTypeSpecificCommands", {})
vim.api.nvim_create_autocmd({ "FileType" }, {
    group = fileTypeSpecific,
    pattern = "javascript",
    command = "setlocal tabstop=2 softtabstop=2 shiftwidth=2",
})

vim.api.nvim_create_autocmd({ "FileType" }, {
    group = fileTypeSpecific,
    pattern = "typescript",
    command = "setlocal tabstop=2 softtabstop=2 shiftwidth=2",
})
vim.api.nvim_create_autocmd({ "FileType" }, {
    group = fileTypeSpecific,
    pattern = "vue",
    command = "setlocal tabstop=2 softtabstop=2 shiftwidth=2",
})
vim.api.nvim_create_autocmd({ "FileType" }, {
    group = fileTypeSpecific,
    pattern = "php",
    command = "setlocal tabstop=4 softtabstop=4 shiftwidth=4",
})
vim.api.nvim_create_autocmd({ "FileType" }, {
    group = fileTypeSpecific,
    pattern = "tex",
    command = "setlocal tw=80 cc=80 spell",
})
vim.api.nvim_create_autocmd({ "FileType" }, {
    group = fileTypeSpecific,
    pattern = "markdown",
    command = "setlocal tw=80 cc=80 spell",
})
vim.api.nvim_create_autocmd({ "FileType" }, {
    group = fileTypeSpecific,
    pattern = "gitcommit",
    command = "setlocal tw=68 cc=80 spell",
})
vim.api.nvim_create_autocmd({ "FileType" }, {
    group = fileTypeSpecific,
    pattern = "java",
    command = "setlocal noexpandtab",
})

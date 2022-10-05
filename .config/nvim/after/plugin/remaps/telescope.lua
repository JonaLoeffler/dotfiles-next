vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<c-p>", "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gc", "<cmd>lua require('telescope.builtin').git_branches()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>s", "<cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<CR>",
    { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fws", "<cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<CR>",
    { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fds", "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>",
    { noremap = true })

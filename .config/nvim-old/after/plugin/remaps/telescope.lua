local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, { noremap = true })
vim.keymap.set("n", "<c-p>", builtin.find_files, { noremap = true })

vim.keymap.set("n", "<leader>fg", builtin.live_grep, { noremap = true })

vim.keymap.set("n", "<leader>fb", builtin.buffers, { noremap = true })

vim.keymap.set("n", "<leader>fh", builtin.help_tags, { noremap = true })

vim.keymap.set("n", "<leader>gc", builtin.git_branches, { noremap = true })
vim.keymap.set("n", "<leader>s", builtin.lsp_dynamic_workspace_symbols, { noremap = true })
vim.keymap.set("n", "<leader>fws", builtin.lsp_dynamic_workspace_symbols, { noremap = true })
vim.keymap.set("n", "<leader>fds", builtin.lsp_document_symbols, { noremap = true })
vim.keymap.set("n", "<leader>fi", builtin.builtin, { noremap = true })
vim.keymap.set("n", "<leader>fc", builtin.commands, { noremap = true })

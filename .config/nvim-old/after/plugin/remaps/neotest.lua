local neotest = require('neotest')

vim.keymap.set("n", "<leader>tr", neotest.run.run, { noremap = true })
vim.keymap.set("n", "<leader>ts", neotest.run.stop, { noremap = true })
vim.keymap.set("n", "<leader>ta", neotest.run.attach, { noremap = true })

vim.keymap.set("n", "<leader>to", neotest.output.open, { noremap = true })

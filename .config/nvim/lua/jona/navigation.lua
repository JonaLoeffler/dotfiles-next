vim.keymap.set("n", "<leader>h", ":wincmd h<CR>")
vim.keymap.set("n", "<leader>j", ":wincmd j<CR>")
vim.keymap.set("n", "<leader>k", ":wincmd k<CR>")
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>co", ":copen<CR>")
vim.keymap.set("n", "<leader>cc", ":cclose<CR>")
vim.keymap.set("n", "<C-j>", ":cnext<CR>")
vim.keymap.set("n", "<C-k>", ":cprev<CR>")

vim.keymap.set("n", "<leader>qo", ":lopen<CR>")
vim.keymap.set("n", "<leader>qq", ":lclose<CR>")
vim.keymap.set("n", "<C-n>", ":lnext<CR>")
vim.keymap.set("n", "<C-m>", ":lprev<CR>")

vim.keymap.set("t", "<esc>", "<C-\\><C-N>")

vim.keymap.set("n", "<leader>p", "\"0p")

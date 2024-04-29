-- vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")
-- vim.keymap.set("n", "<leader>n", ":NvimTreeOpen<CR>")
-- vim.keymap.set("n", "<leader>nr", ":NvimTreeRefresh<CR>")
-- vim.keymap.set("n", "<leader>nt", ":NvimTreeToggle<CR>")
-- vim.keymap.set("n", "<leader>nf", ":NvimTreeFindFile<CR>")

local opts = function(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
end

local open = function()
    require('nvim-tree.api').tree.open({current_window = true, find_file = true})
end


vim.keymap.set("n", "-", open, opts("Open and find file"))
vim.keymap.set("n", "<leader>nf", open, opts("Open and find file"))

-- disable netrw at the very start of your init.lua (strongly advised)
-- vim.g.loaded_netrw = 2
-- vim.g.loaded_netrwPlugin = 2

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
    renderer = {
        group_empty = true
    }
})

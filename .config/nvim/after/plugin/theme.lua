vim.api.nvim_exec("set termguicolors", false)

require 'lualine'.setup {
    options = {
        theme = 'enfocado'
    }
}

vim.g.enfocado_style='nature'

vim.api.nvim_exec("colorscheme enfocado", false)


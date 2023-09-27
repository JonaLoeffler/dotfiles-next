vim.api.nvim_exec("syntax on", false)
vim.api.nvim_exec("filetype plugin indent on", false)
vim.api.nvim_exec("highlight WinSeparator guibg=None", false)

vim.g.mapleader = " "

vim.g.netrw_browse_split = 2
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.lsp.set_log_level("trace")

require("jona.options")
require("jona.abbreviations")
require("jona.navigation")
require("jona.commands")

require("jona.packer")

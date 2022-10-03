vim.api.nvim_exec("syntax on", false)
vim.api.nvim_exec("filetype plugin indent on", false)
vim.api.nvim_exec("highlight WinSeparator guibg=None", false)

vim.g.mapleader = " "

require("jona.options")
require("jona.abbreviations")
require("jona.navigation")
require("jona.commands")

require("jona.plugins")
require("jona.lsp")
require("jona.compe")
require("jona.theme")
require("jona.treesitter")

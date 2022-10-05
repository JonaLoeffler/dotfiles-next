-- general
vim.opt.exrc = true -- source external .vimrc files
vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25-Cursor,r-cr-o:hor20" -- block cursor on insert mode
vim.opt.number = true -- show line number
vim.opt.relativenumber = true -- show relative line numbers
vim.opt.hlsearch = false -- no search highlights
vim.opt.hidden = true -- keep files open in buffers
vim.opt.errorbells = false -- stay silent
vim.opt.wrap = false -- no line wraps
vim.opt.cmdheight = 0

-- searching
vim.opt.smartcase = true -- case matching in searches
vim.opt.ignorecase = true -- case matching in searches
vim.opt.incsearch = true

-- better tab handling
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- history
vim.opt.swapfile = false
vim.opt.backup = false
-- vim.opt.undodir = "~/.cache/vim/undodir"
vim.opt.undofile = true

-- line length indicator
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "120"
vim.opt.textwidth = 120

vim.opt.scrolloff = 8
-- vim.opt.noshowmode

vim.opt.wildmenu = true
vim.opt.wildignore = "*/node_modules/*,*/.git/*,*/vendor/*"
-- vim.opt.path+=**

-- other
vim.opt.clipboard = 'unnamedplus'
vim.opt.laststatus = 3

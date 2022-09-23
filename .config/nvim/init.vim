syntax on
filetype plugin indent on

set exrc " source external .vimrc files
set guicursor= " block cursor on insert mode
set number " show line number
set relativenumber " show relative line numbers
set nohlsearch " no search highlights
set hidden " keep files open in buffers
set noerrorbells " stay silent
set nowrap " no line wraps

" searching
set smartcase " case matching in searches
set ignorecase " case matching in searches
set incsearch

" better tab handling
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" history
set noswapfile
set nobackup
set undodir=~/.cache/vim/undodir
set undofile

" line length indicator
set signcolumn=yes
set colorcolumn=120
set textwidth=120

set scrolloff=8
set completeopt=menuone,noinsert,noselect
" set noshowmode

set wildmenu
set wildignore=*/node_modules/*,*/.git/*,*/vendor/*
set path+=**

set clipboard+=unnamedplus

set laststatus=3
highlight WinSeparator guibg=None

let mapleader = " "
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/commands.vim
source ~/.config/nvim/navigation.vim
source ~/.config/nvim/lsp-config.vim
luafile ~/.config/nvim/abbreviations.lua

" Theme
colorscheme dracula
lua << END
require'lualine'.setup{
    options = {
        theme = 'dracula'
    }
}
END

augroup FileTypeSpecificAutocommands
    autocmd!
    autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType vue setlocal tabstop=2 softtabstop=2 shiftwidth=2

    autocmd FileType php setlocal tabstop=4 softtabstop=4 shiftwidth=4

    autocmd FileType tex setlocal tw=80 cc=80 spell
    autocmd FileType markdown setlocal tw=80 cc=80 spell
    autocmd FileType gitcommit setlocal tw=68 cc=80 spell
augroup END

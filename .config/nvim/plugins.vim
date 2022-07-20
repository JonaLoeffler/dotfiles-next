" Plugins with vim-plug
call plug#begin('~/.cache/nvim/plugins')
" Autocomplete
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

Plug 'github/copilot.vim'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'

" Language-specific
Plug 'jwalton512/vim-blade'
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'lervag/vimtex'

" Navigation
Plug 'preservim/nerdtree'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Theme
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

" Load Plugin settings
luafile ~/.config/nvim/compe-config.lua

" Plugin settings
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.gh|\.svn|venv|node_modules|vendor)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=30

nnoremap <leader>e :NERDTreeFocus<CR>
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>nr :NERDTreeRefreshRoot<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

nnoremap <leader>git :Git<CR>
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>gP :Git pull<CR>
nnoremap <leader>gh :0Gclog<CR>

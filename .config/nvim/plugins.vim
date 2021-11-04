" Plugins with vim-plug
call plug#begin('~/.cache/nvim/plugins')
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'

Plug 'jwalton512/vim-blade'

Plug 'preservim/nerdtree'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

" Plugin settings
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=30

nnoremap <leader>e :NERDTreeFocus<CR>
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

"nnoremap <leader>gi :Git<CR>
"nnoremap <leader>gp :Git push<CR>

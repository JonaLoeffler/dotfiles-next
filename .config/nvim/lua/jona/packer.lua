require("packer").startup(function()
    use("wbthomason/packer.nvim")
    use("MunifTanjim/exrc.nvim")

    -- Autocomplete
    use('neovim/nvim-lspconfig')
    use('hrsh7th/nvim-compe')
    -- Plug 'github/copilot.vim'

    -- Plug 'neoclide/coc.nvim', {'branch': 'release'}
    use('mattn/emmet-vim')
    use('tpope/vim-surround')

    -- Language-specific
    use('jwalton512/vim-blade')
    use('jalvesaq/Nvim-R', { branch = 'stable' })
    use('lervag/vimtex')

    -- Navigation
    use('preservim/nerdtree')
    use('mbbill/undotree')

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }) -- We recommend updating the parsers on update
    use('nvim-treesitter/playground')

    use('nvim-lua/plenary.nvim')
    use('nvim-telescope/telescope.nvim')
    use('nvim-telescope/telescope-fzf-native.nvim',
        { run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' })

    -- Git
    use('tpope/vim-fugitive')
    use('airblade/vim-gitgutter')

    -- Theme
    use('dracula/vim', { as = 'dracula' })
    use('nvim-lualine/lualine.nvim')
    use('kyazdani42/nvim-web-devicons')
end)

require("packer").startup(function()
    use("wbthomason/packer.nvim")

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

-- Completion configuration
require('compe')

-- Telescope remaps
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<c-p>", "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gc", "<cmd>lua require('telescope.builtin').git_branches()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>s", "<cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<CR>",
    { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fws", "<cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<CR>",
    { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fds", "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>",
    { noremap = true })

vim.g.netrw_browse_split = 2
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- NERDTree config
vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeWinSize = 30
vim.keymap.set("n", "<leader>e", ":NERDTreeFocus<CR>")
vim.keymap.set("n", "<leader>n", ":NERDTree<CR>")
vim.keymap.set("n", "<leader>nr", ":NERDTreeRefreshRoot<CR>")
vim.keymap.set("n", "<leader>nt", ":NERDTreeToggle<CR>")
vim.keymap.set("n", "<leader>nf", ":NERDTreeFind<CR>")

-- Fugitive remaps
vim.keymap.set("n", "<leader>gg", ":Git<CR>")
vim.keymap.set("n", "<leader>gp", ":Git push<CR>")
vim.keymap.set("n", "<leader>gP", ":Git pull<CR>")
vim.keymap.set("n", "<leader>gh", ":0Gclog<CR>")

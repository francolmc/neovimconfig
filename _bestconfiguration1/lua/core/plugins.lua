local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    print(" Bootstrapping lazy.nvim!")

    vim.cmd("!git clone --filter=blob:none https://github.com/folke/lazy.nvim.git --branch=stable " .. lazypath)

    print(" Done!")
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { 'tiagovla/tokyodark.nvim' },
    -- Arbol de directorios lateral
    {
        'nvim-tree/nvim-tree.lua',
        lazy = true,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
    },
    -- Barra de estado
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
    },
    -- Integracion con git
    { 'lewis6991/gitsigns.nvim' },
    -- Resaltador de sintaxis
    { 'HiPhish/nvim-ts-rainbow2' },
    { 'nvim-treesitter/nvim-treesitter' },
    -- Language Support
    -- Added this plugin.
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    },
    -- Telescope (Fuzzy Finder)
    -- Added these plugins to install Telescope
    {
        'nvim-telescope/telescope.nvim',
        lazy = true,
        dependencies = {
            {'nvim-lua/plenary.nvim'},
        }
    },
    {
        'tpope/vim-fugitive', 
        dependencies = {
            {'tpope/vim-rhubarb'}
        },
    },
    -- Which-key Extension
    {
        'folke/which-key.nvim',
        lazy = true,
    },
})

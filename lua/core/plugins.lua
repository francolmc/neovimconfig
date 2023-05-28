local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    print(" Bootstrapping lazy.nvim!")

    vim.cmd("!git clone --filter=blob:none https://github.com/folke/lazy.nvim.git --branch=stable " .. lazypath)

    print(" Done!")
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Theme
    { 'tiagovla/tokyodark.nvim' },
    -- Arbol de directorios lateral
    {
        'nvim-tree/nvim-tree.lua',
        lazy = true,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
    },
    -- {
    --     'nvim-neo-tree/neo-tree.nvim',
    --     branch = 'v2.x',
    --     dependencies = {
    --         'nvim-lua/plenary.nvim',
    --         'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    --         'MunifTanjim/nui.nvim'
    --     }
    -- },
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
    -- Telescope (Fuzzy Finder)
    -- Added these plugins to install Telescope
    {
        'nvim-telescope/telescope.nvim',
        lazy = true,
        dependencies = {
            { 'nvim-lua/plenary.nvim' },
        }
    },
    {
        'tpope/vim-fugitive',
        dependencies = {
            { 'tpope/vim-rhubarb' }
        },
    },
    { 'nvim-tree/nvim-web-devicons' },
    -- Language Support
    -- Added this plugin.
    {
        'neoclide/coc.nvim',
        branch = 'release'
    },
    -- add terminal
    { 'akinsho/toggleterm.nvim',    version = "*", config = true },
    -- Which-key Extension
    {
        'folke/which-key.nvim',
        lazy = true,
    },
    -- Revisar los TODO:
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    }
})

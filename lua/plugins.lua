return {
    -- Add tokyonight theme / colorscheme
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    -- Add lualine status bar
    {
        "nvim-lualine/lualine.nvim"
    },
    -- Add nvim-web-devicons
    {
        "nvim-tree/nvim-web-devicons",
        opt = true,
        after = "lualine.nvim",
    },
    -- Add rainbow 
    {
        "HiPhish/nvim-ts-rainbow2"
    },
    -- Añade nvim-treesitter a la lista de plugins con lazy.nvim
    {
        "nvim-treesitter/nvim-treesitter",
        -- Añade un hook para ejecutar el comando después de la instalación
        hook = function()
            vim.cmd(":TSUpdate")
        end
     },
     -- Add indent lines
     {
         "lukas-reineke/indent-blankline.nvim"
     },
    -- Which-key Extension
    {
        "folke/which-key.nvim",
        lazy = true,
    },
    -- Language support
    {
        "neoclide/coc.nvim",
        branch = "release", -- o 'master'
    },
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.1",
        -- or                              , branch = '0.1.x',
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    -- Arbol de directorios lateral
    {
        'nvim-tree/nvim-tree.lua',
        lazy = true,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
    },
    -- add terminal
    {
        "akinsho/toggleterm.nvim",
        version = "*", config = true
    },
    -- Integracion con git
    {
        "lewis6991/gitsigns.nvim"
    },
    -- Revisar los TODO: require la instalacion de ripgrep
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    {
        "SmiteshP/nvim-navic",
        dependencies = {"neovim/nvim-lspconfig"}
    }
}

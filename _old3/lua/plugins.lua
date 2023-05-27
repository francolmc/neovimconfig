local status, packer = pcall(require, "packer")
if (not status) then
    if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
        local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
	vim.api.nvim_command('packadd packer.nvim')
    end
end

require('packer').startup(function(use)
    -- Packer
    use { 'wbthomason/packer.nvim' }
    -- Neovim theme
    -- Instalacion y configuracion de theme
    use { 'tiagovla/tokyodark.nvim' }
    -- Buscador de archivos Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { 
            {'nvim-lua/plenary.nvim' }
        }
    }
    -- Resaltador de sintaxis treesitter
    use { 'HiPhish/nvim-ts-rainbow2' }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    -- Barra de estado
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }
    -- arbol de directorios lateral
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons'}
    }
    -- Autocompletado LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- Soporte LSP
            {'neovim/nvim-lspconfig'},
            {
                'williamboman/mason.nvim',
                run = function() pcall(vim.cmd, 'MasonUpdate') end
            },
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletado
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
    -- popup de apoyo en acciones frente a problemas en codigo
    use { 'glepnir/lspsaga.nvim' }
    use { 'kyazdani42/nvim-web-devicons' }
end)

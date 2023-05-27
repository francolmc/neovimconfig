local status, packer = pcall(require, "packer")
if (not status) then
    if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
        local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	    vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
	    vim.api.nvim_command('packadd packer.nvim')
    end
end

vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -- Treesitter para resaltado de sintaxis y colores
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    -- Instalacion y configuracion de theme
    use { 'navarasu/onedark.nvim' }
    use { 'ayu-theme/ayu-vim' }
    use { 'tiagovla/tokyodark.nvim' }
    -- Sistema de autocompletado
    -- Agregar el repositorio de coc.nvim
    use {
        'neoclide/coc.nvim',
        branch = 'release'
    }
    -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }
    -- Arbol de carpetas lateral
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    -- dev icons
    use { 'ryanoasis/vim-devicons' }
end)

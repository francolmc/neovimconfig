local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed.")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(
  function(use)
    use 'wbthomason/packer.nvim'
    -- add new plugins
    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons'
    }
    -- Theme
    use { 'mhinz/vim-startify' }
    use { 'DanilaMihailov/beacon.nvim' }
    use {
      'nvim-lualine/lualine.nvim',
      requires = {
        'kyazdani42/nvim-web-devicons',
        opt = true
      }
    }
    -- use { 'Shatur/neovim-ayu' }
    use { 'navarasu/onedark.nvim'}
    -- Dev
    use {
      'nvim-telescope/telescope.nvim',
      requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use { 'majutsushi/tagbar' }
    use { 'Yggdroot/indentLine' }
    use { 'tpope/vim-fugitive' }
    use { 'junegunn/gv.vim' }
    use { 'windwp/nvim-autopairs' }
    use { 'nvim-treesitter/nvim-treesitter',
      run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
      end,
      requires = {
            'nvim-treesitter/nvim-treesitter-textobjects',
            'nvim-treesitter/nvim-treesitter-refactor',
            'nvim-treesitter/playground'
        }
    }
    use {
  	  'neoclide/coc.nvim',
      branch = 'release'
    }
end
)

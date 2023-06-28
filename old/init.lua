-- configuracion principal
require('core.options')
require('core.plugins')
-- plugins configuracion
require('plugins.tokyodark')
require('plugins.nvimtree')
-- require('plugins.neotree')
require('plugins.lualine')
require('plugins.gitsigns')
require('plugins.treesitter')
require('plugins.toggleterm')
-- require('plugins.lspzero')
require('plugins.coc')
require('plugins.telescope')
-- key maps
require('keymaps.nvimtree')
require('keymaps.coc')
require('keymaps.whichkey')


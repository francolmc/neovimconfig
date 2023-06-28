-- Configuration editor

-- leader key
vim.g.mapleader = ","

-- lines numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Identation
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

vim.opt.wrap = false

-- Alerts
vim.opt.signcolumn = "yes"

-- highlight matching parenthesis
vim.opt.showmatch = true

vim.opt.mouse = "a"

-- use native clipboard
vim.opt.clipboard = "unnamedplus"

vim.opt.backup = false
vim.opt.errorbells = false
vim.opt.swapfile = false

-- Configuracion de neovide

    vim.o.guifont = "Cascursive:h13"
    -- Helper function for transparency formatting
    local alpha = function()
        return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
    end
-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
    vim.g.neovide_transparency = 0.8
    vim.g.transparency = 0.8
    vim.g.neovide_background_color = "#0f1117" .. alpha()

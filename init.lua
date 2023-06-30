-- Configurations files
require("settings")
require("mappings")

-- Auto install lazy.nvim if not exists
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
    require("plugins")
)

-- Configurations plugins
require("tokyo")
require("lualine-config")
require("nvimwebdevicons-config")
require("treesitter-config")
require("whichkey-config")
require("coc-config")
require("telescope-config")
require("nvimtree-config")
require("toggleterm-config")
require("gitsigns-config")
require("bufferline-config")
require("navic-config")

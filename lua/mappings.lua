-- Key mappings
local map = vim.api.nvim_set_keymap -- To set key mappings

-- Map leader to space
map ("n", "<Space>", "", {})
vim.g.mapleader = " "

-- Map escape to jk in insert mode
map ("i", "jk", "<Esc>", {noremap = true})

-- Map save to <leader>w in normal mode
map ("n", "<leader>w", ":w<CR>", {noremap = true})

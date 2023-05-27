vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })

-- Mappings para COC
vim.api.nvim_set_keymap('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "<C-g>u<CR><C-r>=coc#on_enter()<CR>"', { expr = true, silent = true, noremap = true })

-- Toggle nvim-tree
vim.api.nvim_set_keymap('n', 'n', ':NvimTreeToggle<CR>', { silent = true })

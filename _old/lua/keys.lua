local map = vim.api.nvim_set_keymap

-- Toggle nvim-tree
map('n', 'n', ':NvimTreeToggle<CR>', { silent = true })
-- Dev
map('n', 'l', ':IndentLinesToggle<CR>', { silent = true })
map('n', 't', ':TagbarToggle<CR>', { silent = true })
map('n', 'ff', ':Telescope find_files<CR>', { silent = true })
map('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "<C-g>u<CR><C-r>=coc#on_enter()<CR>"', { expr = true, silent = true, noremap = true })
map('c', '<CR>', "getcmdtype() == ':' && index(['CocCommand', 'CocList'], getcmdline()) != -1 ? '<C-y><CR>' : '<CR>'", { expr = true, noremap = true })
map('i', '<Esc>', 'pumvisible() ? "<C-e><Esc>" : "<Esc>"', { expr = true })
map('n', 'gd', '<Plug>(coc-definition)', {})
map('n', 'gi', '<Plug>(coc-implementation)', {})

-- Format document
map('n', '<leader>f', ':CocCommand prettier.formatFile<CR>', { noremap = true, silent = true })

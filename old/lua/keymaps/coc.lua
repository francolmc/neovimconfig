local map = vim.api.nvim_set_keymap

map('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "<C-g>u<CR><C-r>=coc#on_enter()<CR>"', { expr = true, silent = true, noremap = true })
map('c', '<CR>', "getcmdtype() == ':' && index(['CocCommand', 'CocList'], getcmdline()) != -1 ? '<C-y><CR>' : '<CR>'", { expr = true, noremap = true })
map('i', '<Esc>', 'pumvisible() ? "<C-e><Esc>" : "<Esc>"', { expr = true })
map('n', 'gd', '<Plug>(coc-definition)', {})
map('n', 'gi', '<Plug>(coc-implementation)', {})

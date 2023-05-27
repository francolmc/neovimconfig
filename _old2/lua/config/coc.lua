-- Configuración de coc.nvim
vim.cmd('set updatetime=300')
vim.cmd('autocmd CursorHold * silent call CocActionAsync("highlight")')
vim.g.coc_global_extensions = {'coc-snippets', 'coc-tsserver', 'coc-json', 'coc-lua', 'coc-html', 'coc-html', 'coc-python', 'coc-css'}
-- vim.g.coc_node_path = '/usr/local/bin/node'
vim.g.coc_snippet_next = '<tab>'
vim.g.coc_snippet_prev = '<s-tab>'
vim.g.coc_snippet_confirm = '<cr>'

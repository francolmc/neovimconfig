-- Configuración de coc.nvim
vim.cmd('set updatetime=300')
vim.cmd('autocmd CursorHold * silent call CocActionAsync("highlight")')
vim.g.coc_global_extensions = { 'coc-css', 'coc-pyright', 'coc-tsserver', 'coc-react-refactor', 'coc-emmet', 'coc-lua', 'coc-html', 'coc-prisma', 'coc-tailwindcss', 
'coc-prettier', 'coc-json', 'coc-yaml', 'coc-docker', 'coc-eslint8', 'coc-snippets' }


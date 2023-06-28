local nvimtree = require('nvim-tree')

nvimtree.setup({
    diagnostics = {
        enable = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        }
    },
})

vim.cmd('highlight NvimTreeError ctermbg=red guibg=#592929')
vim.cmd('highlight NvimTreeWarning ctermbg=yellow guibg=#594e2a')
vim.cmd('highlight NvimTreeInfo ctermbg=blue guibg=#293959')
vim.cmd('highlight NvimTreeHint ctermbg=green guibg=#295929')

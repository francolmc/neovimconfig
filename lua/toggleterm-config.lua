require('toggleterm').setup{
    size = 10,
    shade_filetypes = {},
    shade_terminals = true,
    persist_size = false,
    persist_resize = true,
    close_on_exit = true,
    shell = vim.o.shell,
    direction = 'horizontal'
}


function UseColorScheme(color)
    color = color or 'tokyodark'
    vim.g.tokyodark_enable_italic = true
    vim.g.tokyodark_enable_italic_comment = true
    vim.g.tokyodark_enable_italic_keyword = true -- agrega esta línea para habilitar itálicas en keywords
    vim.g.tokyodark_enable_italic_function = true -- agrega esta línea para habilitar itálicas en funciones
    vim.g.tokyodark_enable_bold = true -- agrega esta línea para habilitar negritas en los mismos elementos anteriores
    vim.g.tokyodark_transparent_background = true
    vim.g.tokyodark_color_gamma = "1.0"

    -- Establece las fuentes que tienen soporte para calt y ss01
    vim.cmd([[let &guifont = "Cascursive:h13"]])
    vim.cmd.colorscheme(color)
end

UseColorScheme()

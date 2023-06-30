require('lualine').setup {
    options = {
        icons_enabled = true, -- habilita los iconos de vim-devicons
        theme = 'auto', -- usa el tema que coincida con el colorscheme actual
        component_separators = { left = '', right = ''}, -- usa estos caracteres como separadores entre componentes
        section_separators = { left = '', right = ''}, -- usa estos caracteres como separadores entre secciones
        disabled_filetypes = {
            statusline = {}, -- deshabilita lualine en los buffers con este filetype
            winbar = {}, -- deshabilita lualine en los buffers con este filetype
        },
        ignore_focus = {}, -- no cambia el aspecto de lualine cuando el buffer pierde el foco
        always_divide_middle = true, -- divide la sección C en dos partes iguales
        globalstatus = false, -- muestra lualine solo en la ventana activa
        refresh = {
            statusline = 1000, -- refresca lualine en la statusline cada 1000 ms
            tabline = 1000, -- refresca lualine en la tabline cada 1000 ms
            winbar = 1000, -- refresca lualine en la winbar cada 1000 ms
        }
    },
    sections = {
        lualine_a = {'mode'}, -- muestra el modo actual de vim en la sección A
        lualine_b = {'branch', 'diff', 'diagnostics'}, -- muestra la rama de git, el estado del diff y los diagnósticos en la sección B
        lualine_c = {'filename'}, -- muestra el nombre del archivo actual en la sección C
        lualine_x = {'encoding', 'fileformat', 'filetype'}, -- muestra la codificación, el formato y el tipo de archivo en la sección X
        lualine_y = {'progress'}, -- muestra el progreso del archivo actual en la sección Y
        lualine_z = {'location'} -- muestra la ubicación del cursor en la sección Z
    },
    inactive_sections = {
        lualine_a = {}, -- no muestra nada en la sección A cuando el buffer está inactivo
        lualine_b = {}, -- no muestra nada en la sección B cuando el buffer está inactivo
        lualine_c = {'filename'}, -- muestra el nombre del archivo actual en la sección C cuando el buffer está inactivo
        lualine_x = {'location'}, -- muestra la ubicación del cursor en la sección X cuando el buffer está inactivo
        lualine_y = {}, -- no muestra nada en la sección Y cuando el buffer está inactivo
        lualine_z = {} -- no muestra nada en la sección Z cuando el buffer está inactivo
    },
    tabline = {}, -- no usa lualine para mostrar la tabline
    winbar = {}, -- no usa lualine para mostrar la winbar
    inactive_winbar = {}, -- no usa lualine para mostrar la winbar cuando el buffer está inactivo
    extensions = {} -- no usa ninguna extensión de lualine
}

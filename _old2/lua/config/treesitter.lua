local ts = require 'nvim-treesitter.configs'

ts.setup {
    ensure_installed = {
        "javascript",
        "html",
        "css",
        "python",
        "lua",
        "typescript",
        "tsx",
        "json",
        "yaml",
        "toml",
        "rust",
        "cpp",
        "c",
        "bash",
        "regex",
        "scss",
        "tsx"
    }, -- Instala automáticamente los parsers para los lenguajes de programación que especificas
    highlight = {
        enable = true, -- Habilita el resaltado de sintaxis
        disable = {}, -- Lista de los parsers para los cuales deseas deshabilitar el resaltado de sintaxis
    },
    indent = {
        enable = true -- Habilita la indentación automática según la estructura de tu código
    },
    rainbow = {
        enable = true, -- Habilita la resaltación del paréntesis que cierra
        extended_mode = true, -- Habilita la resaltación de otros tipos de delimitadores como corchetes y llaves
        max_file_lines = 1000, -- El máximo de líneas que el parser tratará de resaltar
    },
    autopairs = {
        enable = true, -- Habilita el autocompletado de paréntesis y otros delimitadores
    },
}

require('plugins')
require('vars')
require('keys')
require('opts')

-- Plugins configuration

require('nvim-tree').setup{}

-- configuration ayu theme
-- require('ayu').setup({
--     mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
--     overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
-- })

-- configuration onedark theme
require('onedark').setup  {
    -- Main options --
    style = 'cool', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    transparent = false,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    -- toggle theme style ---
    toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        keywords = 'italic',
        functions = 'italic',
        strings = 'italic',
        variables = 'italic'
    },

    -- Lualine options --
    lualine = {
        transparent = false, -- lualine center bar transparency
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight groups

    -- Plugins Config --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}

require('lualine').setup({
  options = {
    theme = 'onedark', -- 'ayu',
  },
})
-- Dev
require('nvim-autopairs').setup({
	map_cr = false,
})

require('nvim-treesitter.configs').setup({
    ensure_installed = {
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "python"
    },
    highlight = {
      enable = true,
    },
    indent = {
        enable = true
    },
    textobjects = {
            select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
            },
        },
    },
    query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = { "BufWrite", "CursorHold" },
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
        colors = {},
        termcolors = {},
    },
    font = {
        face = "CaskaydiaCove Nerd Font",
        size = 12,
        italic = true
    },
    font_options = "calt,ss01",
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = false,
            override_file_sorter = true,
            case_mode = "smart_case"
        }
    },
})

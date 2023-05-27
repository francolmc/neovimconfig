local opt = vim.opt
local cmd = vim.api.nvim_command

-- Theme
opt.syntax = "ON"
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
-- opt.guifont = "CaskaydiaCove Nerd Font:h14"
-- vim.api.nvim_set_option('guifont', 'CaskaydiaCove Nerd Font:h14')
-- opt.guifont = "JetBrains Mono:h14"

opt.guifont = "CaskaydiaCove Nerd Font:h14:calt:ss01"
-- opt.termguifont = "Fira Code:h12"
-- opt.guifontwide = "Fira Code:h12"
-- opt.guifontset = "Fira Code:h12"

cmd('colorscheme onedark')
cmd('set mouse=a')
cmd('set clipboard=unnamedplus')

-- Dev
cmd('set foldmethod=expr')
cmd('set foldexpr=nvim_treesitter#foldexpr()')
cmd([[
  autocmd User CocEnter * silent! w
  autocmd User CocJumpPlaceholder if &ft ==# 'yaml' || &ft ==# 'json' | call feedkeys('j') | endif
  ]])
-- Habilitar la corrección automática de errores 
cmd([[autocmd CursorHold,CursorHoldI * silent! lua vim.lsp.buf.hover()]])
cmd([[autocmd CursorHold,CursorHoldI * silent! lua vim.lsp.diagnostic.show_line_diagnostics()]])
cmd([[autocmd CursorHold,CursorHoldI * silent! lua vim.lsp.diagnostic.goto_next()]])
cmd([[autocmd CursorHold,CursorHoldI * silent! lua vim.lsp.diagnostic.goto_prev()]])
-- Mostrar mensajes de error en tiempo real 
cmd([[autocmd CursorHold * silent! lua vim.lsp.buf.hover()]])
cmd([[autocmd CursorHold * silent! lua vim.lsp.diagnostic.show_line_diagnostics()]])
cmd([[autocmd CursorHold * silent! lua vim.lsp.diagnostic.goto_next()]])
cmd([[autocmd CursorHold * silent! lua vim.lsp.diagnostic.goto_prev()]])

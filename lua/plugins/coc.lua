vim.fn['coc#config']('suggest.completionItemKindLabels', {
  variable = " Variable",
  constant = " Constant",
  struct = " Struct",
  class = " Class",
  interface = " Interface",
  text = " Text",
  enum = " Enum",
  enumMember = " Enum Member",
  color = " Color",
  property = " Property",
  field = " Field",
  unit = " Unit",
  file = " File",
  value = " Value",
  event = " Event",
  folder = " Folder",
  keyword = " Keyword",
  snippet = "﬌ Snippet",
  operator = " Operator",
  reference = " Reference",
  typeParameter = " Type Parameter",
  default = " Default",
})


-- Configuración de coc.nvim
vim.cmd('set updatetime=300')
vim.cmd('autocmd CursorHold * silent call CocActionAsync("highlight")')
vim.g.coc_global_extensions = {'coc-snippets', 'coc-tsserver', 'coc-json', 'coc-lua', 'coc-html', 'coc-html', 'coc-python', 'coc-css'}
-- vim.g.coc_node_path = '/usr/local/bin/node'
vim.g.coc_snippet_next = '<tab>'
vim.g.coc_snippet_prev = '<s-tab>'
vim.g.coc_snippet_confirm = '<cr>'

vim.cmd('hi clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end
vim.o.background = 'dark'
vim.o.termguicolors = true
vim.g.gruvbox_italic = 1
vim.cmd('colorscheme gruvbox')

local util = require('colors.util')

local modules = {
  -- 'base',
  'treesitter',
  'lsp',
  -- 'others',
}

local highlights = {}

C = require('colors.gruvbox')

for _, module in ipairs(modules) do
  highlights = vim.tbl_deep_extend('force', highlights, require('colors.' .. module))
end

for group, colors in pairs(highlights) do
  util.highlight(group, colors)
end

local M = {}

function M.get_colors_from_colorscheme(hl_color_name)
  local ret = vim.api.nvim_get_hl_by_name(hl_color_name, true)
  local color = string.format('#%X', tostring(ret.foreground or ret.background))
  return color
end

function M.highlight(group, color)
  local fg = color.fg and 'guifg = ' .. color.fg or 'guifg = NONE'
  local bg = color.bg and 'guibg = ' .. color.bg or 'guibg = NONE'
  local sp = color.sp and 'guisp = ' .. color.sp or 'guisp = NONE'
  local style = color.style and 'gui = ' .. color.style or 'gui = NONE'

  vim.cmd('highlight ' .. group .. ' ' .. style .. ' ' .. fg .. ' ' .. bg .. ' ' .. sp .. ' ')
end

return M

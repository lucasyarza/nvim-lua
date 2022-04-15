local M = {}

function M.config()
  local status_ok, lualine = pcall(require, 'lualine')
  if not status_ok then
    return
  end

  local status_ok_colors, buffer_color = pcall(require, 'colors.lualine')
  if not status_ok_colors then
    buffer_color = {
      active = nil,
      inactive = nil,
    }
  end

  lualine.setup({
    options = {
      icons_enabled = true,
      theme = 'auto',
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
      disabled_filetypes = {},
      always_divide_middle = true,
      globalstatus = false,
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { { 'branch', icon = '' }, 'diff', 'diagnostics' },
      lualine_c = { 'filename' },
      lualine_x = { 'encoding', 'fileformat', 'filetype' },
      lualine_y = { 'progress' },
      lualine_z = { 'location' },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { 'filename' },
      lualine_x = { 'location' },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {
      lualine_a = {
        {
          'buffers',
          buffers_color = buffer_color,
        },
      },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = { 'tabs' },
    },
    extensions = {},
  })
end

return M

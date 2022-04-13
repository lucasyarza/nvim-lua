local M = {}

function M.config()
  local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
  if not status_ok then
    return
  end

  treesitter.setup({
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = true,
    },
  })

end

return M

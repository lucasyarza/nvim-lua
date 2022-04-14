-- vim.opt.rtp:append(vim.fn.stdpath "config")
vim.g.nvim_data_root = vim.fn.stdpath('data')
vim.g.nvim_config_root = vim.fn.stdpath('config')

local sources = {
  "nvim-plugins.plugins",
  "general.settings",
  "config.symbols-outline",
  "keymapping"
}

for _, source in ipairs(sources) do
  local status_ok, fault = pcall(require, source)
  if not status_ok then
    error("Failed to load " .. source .. "\n\n" .. fault)
  elseif source == "nvim-plugins.plugins" then
--    utils.compiled()
  end
end

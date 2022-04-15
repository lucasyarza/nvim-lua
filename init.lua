vim.g.nvim_data_root = vim.fn.stdpath('data')
vim.g.nvim_config_root = vim.fn.stdpath('config')

local impatient_ok, impatient = pcall(require, 'impatient')
if impatient_ok then
  impatient.enable_profile()
end

local sources = {
  'plugins',
  'general.settings',
  'general.globals',
  'config.symbols-outline',
  'keymapping',
}

for _, source in ipairs(sources) do
  local status_ok, fault = pcall(require, source)
  if not status_ok then
    error('Failed to load ' .. source .. '\n\n' .. fault)
  elseif source == 'nvim-plugins.plugins' then
    --    utils.compiled()
  end
end

vim.o.updatetime = 250
vim.cmd([[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]])

vim.opt.rtp:append(vim.fn.stdpath "config")

local sources = {
  "nvim-plugins.plugins",
  "general.settings",
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

local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

lsp_installer.on_server_ready(function(server)
  local opts = server:get_default_options()
  opts.on_attach = require("config.lsp.handlers").on_attach
  opts.capabilities = require("config.lsp.handlers").capabilities

  local present, av_overrides = pcall(require, "config.lsp.server-settings." .. server.name)
  if present then
    opts = vim.tbl_deep_extend("force", av_overrides, opts)
  end

  server:setup(opts)
end)

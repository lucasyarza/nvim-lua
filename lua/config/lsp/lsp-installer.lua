
local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

local my_arduino_fqbn = {
}

local DEFAULT_FQBN = "arduino:avr:uno"

lsp_installer.on_server_ready(function(server)
  local opts = server:get_default_options()
  opts.on_attach = require("config.lsp.handlers").on_attach
  opts.capabilities = require("config.lsp.handlers").capabilities

  if server.name == "arduino_language_server" then
      opts.on_new_config = function (config, root_dir)
          local partial_cmd = server:get_default_options().cmd
          local fqbn = my_arduino_fqbn[root_dir]
          if not fqbn then
              vim.notify(("Could not find which FQBN to use in %q. Defaulting to %q."):format(root_dir, DEFAULT_FQBN))
              fqbn = DEFAULT_FQBN
          end
          config.cmd = vim.list_extend(partial_cmd, { "-fqbn", fqbn })
      end
  end

  local present, av_overrides = pcall(require, "config.lsp.server-settings." .. server.name)
  if present then
    opts = vim.tbl_deep_extend("force", av_overrides, opts)
  end

  server:setup(opts)
end)

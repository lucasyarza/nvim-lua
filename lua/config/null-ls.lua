local M = {}

function M.config()
  local status_ok, null_ls = pcall(require, 'null-ls')
  if not status_ok then
    return
  end

  -- Check supported formatters
  -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
  local formatting = null_ls.builtins.formatting

  -- Check supported linters
  -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
  local diagnostics = null_ls.builtins.diagnostics

  null_ls.setup {
    debug = false,
    sources = {
      -- Set a formatter
      formatting.stylua,
      formatting.trim_newlines.with({disabled_filetypes = { "cpp" },}),
      formatting.trim_whitespace.with({disabled_filetypes = { "cpp" },}),
      formatting.shfmt,
      -- Set a linter
      -- diagnostics.selene,
    },
    -- NOTE: You can remove this on attach function to disable format on save
    on_attach = function(client)
      if client.resolved_capabilities.document_formatting then
        vim.cmd 'autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()'
      end
    end,
  }
end

return M

local M = {}

local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

map("n", "<leader>e", "<cmd>Neotree toggle<CR>", opts)
map("n", "<leader>o", "<cmd>Neotree focus<CR>", opts)

return M

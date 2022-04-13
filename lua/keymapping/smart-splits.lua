local M = {}

local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- Moving between splits
map("n", "<C-h>", "<cmd>lua require'smart-splits'.move_cursor_left()<cr>", opts)
map("n", "<C-j>", "<cmd>lua require'smart-splits'.move_cursor_down()<cr>", opts)
map("n", "<C-k>", "<cmd>lua require'smart-splits'.move_cursor_up()<cr>", opts)
map("n", "<C-l>", "<cmd>lua require'smart-splits'.move_cursor_right()<cr>", opts)

-- Resizing splits
map("n", "<A-h>", "<cmd>lua require'smart-splits'.resize_left(2)<cr>", opts)
map("n", "<A-j>", "<cmd>lua require'smart-splits'.resize_down(2)<cr>", opts)
map("n", "<A-k>", "<cmd>lua require'smart-splits'.resize_up(2)<cr>", opts)
map("n", "<A-l>", "<cmd>lua require'smart-splits'.resize_right(2)<cr>", opts)

return M

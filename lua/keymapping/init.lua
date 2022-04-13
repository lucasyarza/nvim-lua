local M = {}

local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- Remap space as leader key
map("", ",", "<Nop>", opts)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

require('keymapping.neo-tree')
require('keymapping.smart-splits')

return M

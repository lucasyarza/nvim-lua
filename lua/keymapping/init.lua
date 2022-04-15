local M = {}

local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- Remap space as leader key
map('', ',', '<Nop>', opts)
vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- Packer
map('n', '<leader>pc', '<cmd>PackerCompile<cr>', opts)
map('n', '<leader>pi', '<cmd>PackerInstall<cr>', opts)
map('n', '<leader>ps', '<cmd>PackerSync<cr>', opts)
map('n', '<leader>pS', '<cmd>PackerStatus<cr>', opts)
map('n', '<leader>pu', '<cmd>PackerUpdate<cr>', opts)

-- Moving between splits
map('n', '<C-h>', "<cmd>lua require'smart-splits'.move_cursor_left()<cr>", opts)
map('n', '<C-j>', "<cmd>lua require'smart-splits'.move_cursor_down()<cr>", opts)
map('n', '<C-k>', "<cmd>lua require'smart-splits'.move_cursor_up()<cr>", opts)
map('n', '<C-l>', "<cmd>lua require'smart-splits'.move_cursor_right()<cr>", opts)

-- Resizing splits
map('n', '<A-h>', "<cmd>lua require'smart-splits'.resize_left(2)<cr>", opts)
map('n', '<A-j>', "<cmd>lua require'smart-splits'.resize_down(2)<cr>", opts)
map('n', '<A-k>', "<cmd>lua require'smart-splits'.resize_up(2)<cr>", opts)
map('n', '<A-l>', "<cmd>lua require'smart-splits'.resize_right(2)<cr>", opts)

-- Buffer
-- map('n', '<leader><tab>', '<cmd>bnext<CR>', opts)
-- map('n', '<leader><S-tab>', '<cmd>bprevious<CR>', opts)
map('n', '<c-s>', '<cmd>bnext<CR>', opts)
map('n', '<c-a>', '<cmd>bprevious<CR>', opts)

-- Neotree
map('n', '<leader>e', '<cmd>Neotree toggle<CR>', opts)
map('n', '<leader>o', '<cmd>Neotree focus<CR>', opts)

-- SymbolsOutline
map('n', '<leader>lS', '<cmd>SymbolsOutline<CR>', opts)

-- Move text up and down
map('v', '<A-j>', '<cmd>m .+1<CR>==', opts)
map('v', '<A-k>', '<cmd>m .-2<CR>==', opts)

-- Telescope
map('n', '<leader>fw', '<cmd>Telescope live_grep<CR>', opts)
map('n', '<leader>gt', '<cmd>Telescope git_status<CR>', opts)
map('n', '<leader>gb', '<cmd>Telescope git_branches<CR>', opts)
map('n', '<leader>gc', '<cmd>Telescope git_commits<CR>', opts)
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts)
map('n', '<C-P>', '<cmd>Telescope find_files<CR>', opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>', opts)
map('n', '<C-E>', '<cmd>Telescope buffers<CR>', opts)
map('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', opts)
map('n', '<leader>fm', '<cmd>Telescope marks<CR>', opts)
map('n', '<leader>fo', '<cmd>Telescope oldfiles<CR>', opts)
map('n', '<leader>sb', '<cmd>Telescope git_branches<CR>', opts)
map('n', '<leader>sh', '<cmd>Telescope help_tags<CR>', opts)
map('n', '<leader>sm', '<cmd>Telescope man_pages<CR>', opts)
map('n', '<leader>sn', '<cmd>Telescope notify<CR>', opts)
map('n', '<leader>sr', '<cmd>Telescope registers<CR>', opts)
map('n', '<leader>sk', '<cmd>Telescope keymaps<CR>', opts)
map('n', '<leader>sc', '<cmd>Telescope commands<CR>', opts)
map('n', '<leader>ls', '<cmd>Telescope lsp_document_symbols<CR>', opts)
map('n', '<leader>lR', '<cmd>Telescope lsp_references<CR>', opts)
map('n', '<leader>lD', '<cmd>Telescope diagnostics<CR>', opts)

-- ToggleTerm
map('n', '<leader>t', '<cmd>ToggleTerm<cr>', opts)
map('n', '<leader>tf', '<cmd>ToggleTerm direction=float<cr>', opts)
map('n', '<leader>th', '<cmd>ToggleTerm size=10 direction=horizontal<cr>', opts)
map('n', '<leader>tv', '<cmd>ToggleTerm size=80 direction=vertical<cr>', opts)

function _G.set_terminal_keymaps()
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

vim.cmd([[
  augroup TermMappings
    autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()
  augroup END
]])
return M

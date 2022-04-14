local M = {}

local set = vim.opt

set.backup         = false                                 -- Disable making a backup file
set.clipboard      = "unnamed"                             -- Connection to the system clipboard
set.colorcolumn    = "99999"                               -- Fix for the indentline problem
set.completeopt    = { 'menuone', 'noinsert', 'noselect' } -- Options for insert mode completion
set.cursorline     = true                                  -- Highlight the text line of the cursor
set.expandtab      = true                                  -- Enable the use of space in tab
set.expandtab      = true                                  -- Enable the use of space in tab
set.fileencoding   = "utf-8"                               -- File content encoding for the buffer
set.fillchars      = { eob = " " }                         -- Disable `~` on nonexistent lines
set.hidden         = true                                  -- Ignore unsaved buffers
set.hlsearch       = true                                  -- Highlight all the matches of search pattern
set.ignorecase     = true                                  -- Case insensitive searching
set.number         = true                                  -- Show numberline
set.relativenumber = true                                  -- Show relative numberline
set.scrolloff      = 10                                    -- Number of lines to keep above and below the cursor
set.shiftwidth     = 2                                     -- Number of space inserted for indentation
set.sidescrolloff  = 8                                     -- Number of columns to keep at the sides of the cursor
set.signcolumn     = "yes"                                 -- Always show the sign column
set.smartcase      = true                                  -- Case sensitivie searching
set.smartindent    = true                                  -- Do auto indenting when starting a new line
set.splitbelow     = true                                  -- Splitting a new window below the current one
set.splitright     = true                                  -- Splitting a new window at the right of the current one
set.swapfile       = false                                 -- Disable use of swapfile for the buffer
set.tabstop        = 2                                     -- Number of space in a tab
set.termguicolors  = true                                  -- Enable 24-bit RGB color in the TUI
set.undofile       = true                                  -- Enable persistent undo
set.wrap           = false                                 -- Disable wrapping of lines longer than the width of window

set.path:append({ '**' })

vim.cmd "execute 'set undodir=' . g:nvim_data_root . '/undodir'"

vim.g.gruvbox_italic=1

vim.cmd 'colorscheme gruvbox'

return M

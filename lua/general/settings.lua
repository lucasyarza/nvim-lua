local M = {}

local set = vim.opt

set.fileencoding   = "utf-8"                               -- File content encoding for the buffer
set.clipboard      = "unnamed"                             -- Connection to the system clipboard
set.termguicolors  = true                                  -- Enable 24-bit RGB color in the TUI
set.cursorline     = true                                  -- Highlight the text line of the cursor
set.hidden         = true                                  -- Ignore unsaved buffers
set.wrap           = false                                 -- Disable wrapping of lines longer than the width of window
set.number         = true                                  -- Show numberline
set.relativenumber = true                                  -- Show relative numberline
set.smartindent    = true                                  -- Do auto indenting when starting a new line
set.tabstop        = 2                                     -- Number of space in a tab
set.scrolloff      = 10                                    -- Number of lines to keep above and below the cursor
set.sidescrolloff  = 8                                     -- Number of columns to keep at the sides of the cursor
set.shiftwidth     = 2                                     -- Number of space inserted for indentation
set.expandtab      = true                                  -- Enable the use of space in tab
set.smartcase      = true                                  -- Case sensitivie searching
set.ignorecase     = true                                  -- Case insensitive searching
set.hlsearch       = true                                  -- Highlight all the matches of search pattern
set.completeopt    = { 'menuone', 'noinsert', 'noselect' } -- Options for insert mode completion
set.signcolumn     = "yes"                                 -- Always show the sign column
set.swapfile       = false                                 -- Disable use of swapfile for the buffer
set.backup         = false                                 -- Disable making a backup file
set.undofile       = true                                  -- Enable persistent undo
set.colorcolumn    = "99999"                               -- Fix for the indentline problem
set.fillchars      = { eob = " " }                         -- Disable `~` on nonexistent lines
set.path:append({ '**' })

vim.g.gruvbox_italic=1

vim.cmd 'colorscheme gruvbox'

return M

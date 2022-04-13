local packer_status_ok, packer = pcall(require, "packer")
if not packer_status_ok then
  return
end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Lua functions
  use 'nvim-lua/plenary.nvim'

  -- Neovim UI Enhancer
  use 'MunifTanjim/nui.nvim'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'

  -- Tabular
  use 'godlygeek/tabular'

  -- File explorer
  use {
    'nvim-neo-tree/neo-tree.nvim', 
    branch = "v2.x", 
    requires = { 
     "nvim-lua/plenary.nvim",
     "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
     "MunifTanjim/nui.nvim",
    },
    config = function()
      require('config.neo-tree').config()
    end,
  }

  -- Smarter Splits
  use {
    'mrjones2014/smart-splits.nvim',
    config = function()
      require('config.smart-splits').config()
    end,
  }

  -- Syntax highlighting
  use { 
    'nvim-treesitter/nvim-treesitter', 
    run = ':TSUpdate',
    config = function()
      require("config.treesitter").config()
    end,
  }

  -- Completion engine
  use {
    'hrsh7th/nvim-cmp',
     config = function()
      require("config.cmp").config()
    end,
  }

  use {
    'tzachar/cmp-tabnine',
    run='./install.sh',
    requires = 'hrsh7th/nvim-cmp',
    config = function()
      require('config.cmp-tabnine').config()
    end,
  }

  use 'onsails/lspkind-nvim'

  -- Buffer completion source
  use {
    "hrsh7th/cmp-buffer",
    requires = "nvim-cmp",
  }

  -- Path completion source
  use {
    "hrsh7th/cmp-path",
    requires = "nvim-cmp",
  }

  -- LSP completion source
  use {
    "hrsh7th/cmp-nvim-lsp",
    requires = "nvim-cmp",
  }

  use 'williamboman/nvim-lsp-installer'
  -- Built-in LSP && LSP manager
  use {
    "neovim/nvim-lspconfig",
    config = function()
      require "config.lsp"
    end,
  }

  -- Snippet collection
  use {
    "rafamadriz/friendly-snippets",
    require = "nvim-cmp",
  }

  -- Snippet engine
  use {
    "L3MON4D3/LuaSnip",
    require = "friendly-snippets",
    config = function()
      require("config.luasnip").config()
    end,
  }

  -- Snippet completion source
  use {
    "saadparwaiz1/cmp_luasnip",
    require = "nvim-cmp",
  }

  use 'morhetz/gruvbox'
  use 'euclidianAce/BetterLua.vim'
end)

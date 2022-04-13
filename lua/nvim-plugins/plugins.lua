local packer_status_ok, packer = pcall(require, "packer")
if not packer_status_ok then
  return
end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Lua functions
  use 'nvim-lua/plenary.nvim'
  
  -- Syntax highlighting
  use { 
    'nvim-treesitter/nvim-treesitter', 
    run = ':TSUpdate',
    config = function()
      require("config.treesitter").config()
    end,
  }

  -- Neovim UI Enhancer
  use { 'MunifTanjim/nui.nvim'}

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


  use 'morhetz/gruvbox'
  use 'euclidianAce/BetterLua.vim'
end)

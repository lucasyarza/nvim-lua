local packer_status_ok, packer = pcall(require, 'packer')
if not packer_status_ok then
  return
end

return packer.startup(function(use)
  -- Global {{{
  -- Packer can manage itself
  use('wbthomason/packer.nvim')

  -- Lua functions
  use('nvim-lua/plenary.nvim')
  -- }}}

  -- UI {{{
  -- Neovim UI Enhancer
  use('MunifTanjim/nui.nvim')

  -- Icons {{{
  use({
    'kyazdani42/nvim-web-devicons',
    config = function()
      require('config.devicons').config()
    end,
  })
  -- }}}

  -- Lualine {{{
  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      require('config.lualine').config()
    end,
  })
  -- }}}

  -- Tabular
  use('godlygeek/tabular')

  -- File explorer
  use({
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'nvim-lua/plenary.nvim',
      'kyazdani42/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    },
    config = function()
      require('config.neo-tree').config()
    end,
  })

  -- Smarter Splits
  use({
    'mrjones2014/smart-splits.nvim',
    config = function()
      require('config.smart-splits').config()
    end,
  })
  -- }}}

  -- Treesitter {{{
  -- Syntax highlighting
  use({
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('config.treesitter').config()
    end,
  })

  -- Parenthesis highlighting
  use({
    'p00f/nvim-ts-rainbow',
    require = 'nvim-treesitter',
  })

  -- Autoclose tags
  use({
    'windwp/nvim-ts-autotag',
    require = 'nvim-treesitter',
  })

  use({
    'JoosepAlviste/nvim-ts-context-commentstring',
    require = 'nvim-treesitter',
  })

  -- Commenting
  use({
    'numToStr/Comment.nvim',
    event = { 'BufRead', 'BufNewFile' },
    config = function()
      require('config.comment').config()
    end,
  })

  -- Autopairs
  use({
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = function()
      require('config.autopairs').config()
    end,
  })
  -- }}}

  -- Completion engine {{{
  -- Completion engine
  use({
    'hrsh7th/nvim-cmp',
    config = function()
      require('config.cmp').config()
    end,
  })

  use({
    'tzachar/cmp-tabnine',
    run = './install.sh',
    requires = 'hrsh7th/nvim-cmp',
    config = function()
      require('config.cmp-tabnine').config()
    end,
  })

  use('onsails/lspkind-nvim')

  -- Buffer completion source
  use({
    'hrsh7th/cmp-buffer',
    requires = 'nvim-cmp',
  })

  -- Path completion source
  use({
    'hrsh7th/cmp-path',
    requires = 'nvim-cmp',
  })

  -- LSP completion source
  use({
    'hrsh7th/cmp-nvim-lsp',
    requires = 'nvim-cmp',
  })
  --}}}

  -- Language Server Protocol {{{
  -- LSP manager
  use('williamboman/nvim-lsp-installer')

  -- Built-in LSP && LSP manager
  use({
    'neovim/nvim-lspconfig',
    config = function()
      require('config.lsp')
    end,
  })

  -- LSP symbols
  use({
    'simrat39/symbols-outline.nvim',
    cmd = 'SymbolsOutline',
  })
  -- }}}

  -- Snippets {{{
  -- Snippet collection
  use({
    'rafamadriz/friendly-snippets',
    require = 'nvim-cmp',
  })

  -- Snippet engine
  use({
    'L3MON4D3/LuaSnip',
    require = 'friendly-snippets',
    config = function()
      require('config.luasnip').config()
    end,
  })

  -- Snippet completion source
  use({
    'saadparwaiz1/cmp_luasnip',
    require = 'nvim-cmp',
  })
  -- }}}

  -- Git integration
  use({
    'lewis6991/gitsigns.nvim',
    event = { 'BufRead', 'BufNewFile' },
    config = function()
      require('config.gitsigns').config()
    end,
  })

  -- Indentation
  use({
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('config.indent-line').config()
    end,
  })

  use({
    'mg979/vim-visual-multi',
    branch = 'master',
  })

  -- Terminal
  use({
    'akinsho/nvim-toggleterm.lua',
    cmd = 'ToggleTerm',
    config = function()
      require('config.toggleterm').config()
    end,
  })

  use({
    'jose-elias-alvarez/null-ls.nvim',
    event = { 'BufRead', 'BufNewFile' },
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('config.null-ls').config()
    end,
  })

  use({
    'j-hui/fidget.nvim',
    config = function()
      require('fidget').setup({})
    end,
  })

  -- Color highlighting
  use({
    'norcalli/nvim-colorizer.lua',
    event = { 'BufRead', 'BufNewFile' },
    config = function()
      require('config.colorizer').config()
    end,
  })

  -- Fuzzy finder
  use({
    'nvim-telescope/telescope.nvim',
    cmd = 'Telescope',
    module = 'telescope',
    requires = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
    },
    config = function()
      require('config.telescope').config()
    end,
  })

  use('morhetz/gruvbox')
  use('euclidianAce/BetterLua.vim')
  use('rafcamlet/nvim-luapad')
end)

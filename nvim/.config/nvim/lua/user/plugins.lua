local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  vim.cmd [[packadd packer.nvim]]
end

-- Reloads neovim whenever the plugins.lua file is saved
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Plugins
return packer.startup(function(use)
  use "wbthomason/packer.nvim"

  -- Colorscheme
  use "folke/tokyonight.nvim"

  -- Easy navigation between vim and tmux
  use "christoomey/vim-tmux-navigator"

  -- Sexp
  use {
    "guns/vim-sexp",
    requires = {
      "tpope/vim-sexp-mappings-for-regular-people",
      "tpope/vim-repeat",
      "tpope/vim-surround"
    }
  }

  -- Autocompletion
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "PaterJason/cmp-conjure",
      "saadparwaiz1/cmp_luasnip"
    }
  }

  -- Commenter
  
  use {
    "numToStr/Comment.nvim",
    config = function()
        require('Comment').setup()
    end
  }

  -- Highligh yanking
  use "machakann/vim-highlightedyank"

  -- Git integration
  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end
  }
  use "tpope/vim-rhubarb"
  use "tpope/vim-fugitive"

  -- File explore
  use {
    "kyazdani42/nvim-tree.lua",
    require = {
      "kyazdani42/nvim-web-devicons"
    }
  }

  -- Parsig system
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ':TSUpdate',
    requires = {
      "HiPhish/rainbow-delimiters.nvim"
    }
  }

  -- Telescope
  use {
    "nvim-telescope/telescope.nvim",
    requires = {
      "nvim-telescope/telescope-ui-select.nvim",
      "nvim-lua/popup.nvim",
      "nvim-lua/plenary.nvim"
    }
  }

  -- Lualine
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
    config = function()
      require("lualine").setup()
    end
  }

  -- LSP
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"

  -- Clojure repl tools
  use "Olical/conjure"

  -- Colorize text with ANSI escape sequences
  use "m00qek/baleia.nvim"

  -- Snippet engine
  use "L3MON4D3/LuaSnip"

  -- Automatically set up your configuration after cloning packer.nvim
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

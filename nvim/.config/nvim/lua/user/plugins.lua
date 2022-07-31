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
  use "ishan9299/nvim-solarized-lua"
  use "lunarvim/colorschemes"

  -- Easy navigation between vim and tmux
  use "christoomey/vim-tmux-navigator"

  -- Avoid messing up with layout when closing buffers
  use "moll/vim-bbye"

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
      "PaterJason/cmp-conjure"
    }
  }

  -- Commenter
  use "preservim/nerdcommenter"

  -- Highligh yanking
  use "machakann/vim-highlightedyank"

  -- Git integration
  use "lewis6991/gitsigns.nvim"
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
      "p00f/nvim-ts-rainbow"
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

  -- TODO config for clojure
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"

  -- Lualine
  -- TODO indicate when LSP is running
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  }

  -- Clojure repl tools
  use "Olical/conjure"

  -- Colorize text with ANSI escape sequences
  use "m00qek/baleia.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

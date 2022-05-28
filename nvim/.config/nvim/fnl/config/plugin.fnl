(module config.plugin
  {autoload {nvim aniseed.nvim
             a aniseed.core
             util config.util
             : packer}})

(defn- safe-require-plugin-config [name]
  (let [(ok? val-or-err) (pcall require (.. :config.plugin. name))]
    (when (not ok?)
      (print (.. "config error: " val-or-err)))))

(defn- use [...]
  "Iterates through the arguments as pairs and calls packer's use function for
  each of them. Works around Fennel not liking mixed associative and sequential
  tables as well."
  (let [pkgs [...]]
    (packer.startup
      (fn [use]
        (for [i 1 (a.count pkgs) 2]
          (let [name (. pkgs i)
                opts (. pkgs (+ i 1))]
            (-?> (. opts :mod) (safe-require-plugin-config))
            (use (a.assoc opts 1 name)))))))
  nil)

(use
  ;; plugin manager
  :wbthomason/packer.nvim {}

  ;; bridges the gap between fennel and neovim
  :Olical/aniseed {:branch :develop}

  ;; speed up loading lua modules
  :lewis6991/impatient.nvim {}

  ;; theme
  :ishan9299/nvim-solarized-lua {:mod :solarized}

  ;; status line
  :nvim-lualine/lualine.nvim {:mod :lualine
                              :requires [:kyazdani42/nvim-web-devicons]}

  ;; file searching
  :nvim-telescope/telescope.nvim {:requires [:nvim-telescope/telescope-ui-select.nvim
                                             :nvim-lua/popup.nvim
                                             :nvim-lua/plenary.nvim]
                                  :mod :telescope}

  ;; repl tools
  :Olical/conjure {:branch :master :mod :conjure}

  ;; sexp
  :guns/vim-sexp {:mod :sexp}
  :tpope/vim-sexp-mappings-for-regular-people {}
  :tpope/vim-repeat {}
  :tpope/vim-surround {}

  ;; parsing system
  :nvim-treesitter/nvim-treesitter {:run ":TSUpdate"
                                    :mod :treesitter
                                    :requires [:p00f/nvim-ts-rainbow]}

  ;; lsp
  :neovim/nvim-lspconfig {:mod :lspconfig}

  ;; easy navigation between vim and tmux
  :christoomey/vim-tmux-navigator {}

  ;; file exploration
  :preservim/nerdtree {:mod :nerdtree}
  :Xuyuanp/nerdtree-git-plugin {}

  ;; commeting code
  :preservim/nerdcommenter {:mod :nerdcommenter}

  ;; highlight logfiles
  :mtdl9/vim-log-highlighting {}

  ;; yank highlight
  :machakann/vim-highlightedyank {:mod :highlightedyank}

  ;; git integration
  :airblade/vim-gitgutter {}
  :tpope/vim-fugitive {}
  :tpope/vim-rhubarb {}

  ;; autocomplete
  :hrsh7th/nvim-cmp {:requires [:hrsh7th/cmp-buffer
                                :hrsh7th/cmp-nvim-lsp
                                :hrsh7th/cmp-path
                                :PaterJason/cmp-conjure]
                     :mod :cmp})


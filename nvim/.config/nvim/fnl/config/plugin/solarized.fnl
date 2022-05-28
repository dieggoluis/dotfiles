(module config.plugin.solarized
  {autoload {nvim aniseed.nvim
             util config.util}})

(util.set-global-option :termguicolors true)
(nvim.ex.colorscheme :solarized-flat)

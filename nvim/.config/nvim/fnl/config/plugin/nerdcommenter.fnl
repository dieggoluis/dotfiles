(module config.plugin.nerdcommenter
  {autoload {nvim aniseed.nvim}})

(nvim.set_keymap :n :<c-_> "<plug>NERDCommenterToggle" {:noremap true})
(nvim.set_keymap :v :<c-_> "<plug>NERDCommenterToggle<CR>gv" {:noremap true})
             

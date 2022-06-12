(module config.plugin.bbye
  {autoload {nvim aniseed.nvim}})

(nvim.set_keymap :n :<leader>q ":Bdelete<CR>" {:noremap true})

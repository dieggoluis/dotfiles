(module config.plugin.nvim-tree
  {autoload {nvim aniseed.nvim
             tree nvim-tree}})

(nvim.set_keymap :n :<leader>tt ":NvimTreeToggle<CR>" {:noremap true})
(nvim.set_keymap :n :<leader>tr ":NvimTreeRefresh<CR>" {:noremap true})
(nvim.set_keymap :n :<leader>tf ":NvimTreeFindFile<CR>" {:noremap true})

(tree.setup {})

(module config.plugin.treesitter
  {autoload {treesitter nvim-treesitter.configs}})

(treesitter.setup {:highlight {:enable true}
                   :indent {:enable true}
                   :ensure_installed ["clojure" "python" "fennel"]
                   :rainbow {:enable true
                             :extended_mode true}})

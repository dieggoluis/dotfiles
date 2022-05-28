(module config.util
  {autoload {core aniseed.core
             nvim aniseed.nvim}})

(defn set-global-option [key value]
  "Sets a nvim global options"
  (core.assoc nvim.o key value))

(defn set-global-variable [key value]
  "Sets a nvim global variables"
  (core.assoc nvim.g key value))


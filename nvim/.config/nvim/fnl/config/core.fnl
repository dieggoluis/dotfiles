(module config.core
  {autoload {nvim aniseed.nvim
             util config.util}})

;don't wrap lines
(nvim.ex.set :nowrap)

;sets a nvim global options
(let [options
      {:encoding "utf-8"
       :spelllang "en_us"
       ;tab/indent size
       :tabstop 2
       :shiftwidth 2
       :softtabstop 2
       ;settings needed for compe autocompletion
       :completeopt "menuone,noselect"
       ;case insensitive search
       :ignorecase true
       ;smart search case
       :smartcase true
       ;shared clipboard with linux
       :clipboard "unnamedplus"
       ;cursor line
       :cursorline true
       ;show relative line number
       :relativenumber true
       ;show line number
       :number true
       ;tabs is space
       :expandtab true
       ;tab/indent size
       :tabstop 2
       :shiftwidth 2
       :softtabstop 2}]
  (each [option value (pairs options)]
    (util.set-global-option option value)))


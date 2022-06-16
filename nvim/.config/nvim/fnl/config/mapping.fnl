(module config.mapping
  {autoload {nvim aniseed.nvim}})

(defn- noremap [mode from to]
  "Sets a mapping with {:noremap true}."
  (nvim.set_keymap mode from to {:noremap true}))

;; generic mapping leaders configuration
(nvim.set_keymap :n :<space> :<nop> {:noremap true})
(set nvim.g.mapleader " ")
(set nvim.g.maplocalleader ",")

;; easy buffers navigation
(noremap :n :<tab> ":bnext<CR>")
(noremap :n :<s-tab> ":bprevious<CR>")

;; clear highlighting on enter in normal mode
(noremap :n :<CR> ":noh<CR><CR>")

;; escape from terminal normal mode
(noremap :t :<esc><esc> "<c-\\><c-n>")

;; resize splits
(noremap :n :<leader>+ ":resize +5<CR>")
(noremap :n :<leader>- ":resize -5<CR>")
(noremap :n :<leader>> ":vertical resize +5<CR>")
(noremap :n :<leader>< ":vertical resize -5<CR>")

;; save
(noremap :n :<leader>w ":w<CR>")

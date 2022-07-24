(module config.plugin.conjure
  {autoload {nvim aniseed.nvim}})

(set nvim.g.conjure#mapping#doc_word "K")
(set nvim.g.conjure#client#clojure#nrepl#eval#auto_require false)
(set nvim.g.conjure#client#clojure#nrepl#connection#auto_repl#enabled false)

(nvim.set_keymap :n :<leader>ef ":ConjureEvalFile<CR>" {:noremap true})
(nvim.set_keymap :n :<leader>ee ":ConjureEvalCurrentForm<CR>" {:noremap true})
(nvim.set_keymap :n :<leader>et ":ConjureLogToggle<CR>" {:noremap true})
(nvim.set_keymap :v :<leader>ev ":ConjureEval<CR>" {:noremap true})
(nvim.set_keymap :n :<leader>tn ":ConjureCljRunCurrentNsTests<CR>" {:noremap true})
(nvim.set_keymap :n :<leader>tc ":ConjureCljRunCurrentTest<CR>" {:noremap true})

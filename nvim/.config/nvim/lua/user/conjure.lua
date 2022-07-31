vim.g["conjure#mapping#doc_word"] = "K"
vim.g["conjure#client#clojure#nrepl#eval#auto_require"] = false
vim.g["conjure#client#clojure#nrepl#connection#auto_repl#enabled"] = false
vim.g["conjure#log#botright"] = true

Keymap("n", "<leader>ee", ":ConjureEvalCurrentForm<cr>")
Keymap("n", "<leader>ef", ":ConjureEvalFile<cr>")
Keymap("n", "<leader>eb", ":ConjureEvalBuf<cr>")
Keymap("n", "<leader>er", ":ConjureEvalRootForm<cr>")
Keymap("n", "<leader>et", ":ConjureLogToggle<cr>")
Keymap("n", "<leader>tn", ":ConjureCljRunCurrentNsTests<cr>")
Keymap("n", "<leader>tc", ":ConjureCljRunCurrentTest<cr>")
Keymap("v", "<leader>ev", ":ConjureEval<cr>")

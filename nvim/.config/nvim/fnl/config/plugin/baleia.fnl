(module config.plugin.baleia
  {autoload {nvim aniseed.nvim
             baleia baleia}})

(def baleia-setup (baleia.setup {:line_starts_at 3}))
(nvim.ex.autocmd 
  :BufWinEnter
  "conjure-log-*"
  (baleia-setup.automatically (nvim.buf.nr)))


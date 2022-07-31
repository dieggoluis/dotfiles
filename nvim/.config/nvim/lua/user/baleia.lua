local status_ok, baleia = pcall(require, "baleia")
if not status_ok then
  vim.notify("baleia plugin not found!")
  return
end

vim.g["conjure#log#strip_ansi_escape_sequences_line_limit"] = 0

local baleia_setup = baleia.setup { line_starts_at = 3 }

vim.api.nvim_create_autocmd("BufWinEnter", {
  pattern = "conjure-log-*",
  callback = function(args) baleia_setup.automatically(args.buf) end,
})

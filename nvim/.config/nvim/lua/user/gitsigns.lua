local status_ok, gitsigns = pcall(require, "gitsigns")
if not status_ok then
  vim.notify("gitsigns plugin not found!")
  return
end

gitsigns.setup {}

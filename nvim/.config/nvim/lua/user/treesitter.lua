local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  vim.notify("nvim-treesitter plugin not found!")
  return
end

treesitter.setup {
  highlight = { enable = true },
  indent = { enable = true },
  ensure_installed = {
    "clojure",
    "python",
    "scala",
    "bash",
    "lua",
    "go"
  },
  rainbow = {
    enable = true,
    extended_mode = true
  }
}

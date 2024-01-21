local status_ok, tree = pcall(require, "nvim-tree")
if not status_ok then
  vim.notify("nvim-tree plugin not found!")
  return
end

Keymap("n", "<leader>tt", ":NvimTreeToggle<CR>")

tree.setup {
  actions = {
    open_file = {
      resize_window = false
    }
  }
}

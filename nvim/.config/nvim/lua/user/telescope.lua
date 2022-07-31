local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  vim.notify("telescope plugin not found!")
  return
end

telescope.setup {
  defaults = {
    path_display = { "smart" }
  },
  pickers = {
    find_files = { theme = "ivy", previewer = false },
    buffers = { theme = "ivy", previewer = false },
  },
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {}
    }
  },
}

telescope.load_extension("ui-select")

Keymap("n", "<leader>ff", ":lua require('telescope.builtin').find_files()<CR>")
Keymap("n", "<leader>fg", ":lua require('telescope.builtin').live_grep()<CR>")
Keymap("n", "<leader>fb", ":lua require('telescope.builtin').buffers()<CR>")
Keymap("n", "<leader>fh", ":lua require('telescope.builtin').help_tags()<CR>")

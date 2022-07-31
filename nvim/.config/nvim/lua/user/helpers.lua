local opts = { noremap = true, silent = true }

function Keymap(mode, from, to)
  vim.api.nvim_set_keymap(mode, from, to, opts)
end

function BufKeymap(buf, mode, from, to)
  vim.api.nvim_buf_set_keymap(buf, mode, from, to, opts)
end

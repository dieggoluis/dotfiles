-- General vim options and keymaps

vim.opt.fileencoding = "utf-8"
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.wrap = false
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.completeopt = { "menuone", "noselect" }

-- Remap space as leader key
Keymap("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Modes
--  normal_mode = "n",
--  insert_mode = "i",
--  visual_mode = "v",
--  visual_block_mode = "x",
--  term_mode = "t"

-- Easy buffers navigation with tab
Keymap("n", "<tab>", ":bnext<cr>")
Keymap("n", "<s-tab>", ":bprevious<cr>")

-- Clear highi=lighting on enter in normal mode
Keymap("n", "<cr>", ":noh<cr><cr>")

-- Resize with arrows
Keymap("n", "<leader><up>", ":resize +2<cr>")
Keymap("n", "<leader><down>", ":resize -2<cr>")
Keymap("n", "<leader><left>", ":vertical resize -2<cr>")
Keymap("n", "<leader><right>", ":vertical resize +2<cr>")

-- Save
Keymap("n", "<leader>w", ":w<cr>")

-- Scape from terminal normal model
Keymap("t", "<esc><esc>", "<c-\\><c-n>")

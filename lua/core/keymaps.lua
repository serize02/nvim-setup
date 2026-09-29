vim.g.mapleader = " "
local keymap = vim.keymap.set

keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

keymap("n", "<C-Up>", ":resize +2<CR>")
keymap("n", "<C-Down>", ":resize -2<CR>")
keymap("n", "<C-Left>", ":vertical resize -2<CR>")
keymap("n", "<C-Right>", ":vertical resize +2<CR>")

keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("n", "<leader>h", ":nohlsearch<CR>")

keymap("n", "<leader>w", ":write<CR>")

keymap("n", "<leader>q", ":quit<CR>")

keymap("n", "<Tab>", ":bnext<CR>")
keymap("n", "<S-Tab>", ":bprevious<CR>")

keymap("n", "<leader>bd", ":bdelete<CR>")

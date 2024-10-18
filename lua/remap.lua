-- scrolling
vim.keymap.set("n", "G", "Gzz")
vim.keymap.set("n", "gg", "ggzz")
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
-- nnoremap <C-d> <C-d>zz
-- nnoremap <C-u> <C-u>zz

-- windows
vim.keymap.set("n", "<C-h>", "<C-w>h<CR>")
vim.keymap.set("n", "<C-j>", "<C-w>j<CR>")
vim.keymap.set("n", "<C-k>", "<C-w>k<CR>")
vim.keymap.set("n", "<C-l>", "<C-w>l<CR>")

vim.keymap.set("i", "<C-h>", "<esc><C-w>h")
vim.keymap.set("i", "<C-j>", "<esc><C-w>j")
vim.keymap.set("i", "<C-k>", "<esc><C-w>k")
vim.keymap.set("i", "<C-l>", "<esc><C-w>l")

vim.keymap.set("t", "<C-h>", "<C-w>N<C-w>h")
vim.keymap.set("t", "<C-j>", "<C-w>N<C-w>j")
vim.keymap.set("t", "<C-k>", "<C-w>N<C-w>k")
vim.keymap.set("t", "<C-l>", "<C-w>N<C-w>l")
vim.keymap.set("t", "<C-q>", "<C-w>NZQ")

-- copying
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>D", "\"_D")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>p", "\"_p")
vim.keymap.set("n", "<leader>P", "\"_P")
vim.keymap.set("v", "<leader>p", "\"_p")

-- move selected lines
vim.keymap.set("v", "J", ":m<space>'>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m<space>'<-2<CR>gv=gv")

-- annoying Q
vim.keymap.set("n", "Q", "<nop>")

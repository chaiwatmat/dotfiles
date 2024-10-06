vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "
vim.g.background = "light"
vim.g.maplocalleader = "\\"

vim.keymap.set("i", "jk", "<Esc>", {})
vim.keymap.set("v", "jk", "<Esc>", {})

vim.keymap.set("n", "<leader>q", ":q<CR>", {})
vim.keymap.set("n", "H", "Hzz", {})
vim.keymap.set("n", "L", "Lzz", {})

vim.opt.swapfile = false

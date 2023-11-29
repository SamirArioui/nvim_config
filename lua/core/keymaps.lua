vim.g.mapleader = " "

-- tree
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- editing
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Git
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>")

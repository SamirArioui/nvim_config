vim.g.mapleader = " "

-- tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
vim.keymap.set("n", "<leader>o", ":NvimTreeFocus<CR>", { desc = "Focus NvimTree" })

-- editing
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Select Up" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Select Down" })

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "J", "mzJ`z", { desc = "Join line" })

-- Scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scolling Down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scolling Up" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next Matching" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous Matching" })

-- Yanking
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Previous Matching" })

-- Git
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", { desc = "Toggle LazyGit" })

-- Windows and buffers
vim.keymap.set("n", "<leader>c", ":close<CR>", { desc = "Close Window" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move To Right Window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move To Bottom Window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move To Top Window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move To Left Window" })

vim.keymap.set("n", "<leader>sv", ":vs<CR>", { desc = "Vertical Split" })
vim.keymap.set("n", "<leader>sh", ":sp<CR>", { desc = "Horizontal Split" })

vim.keymap.set("n", "<S-h>", ":bp<CR>", { desc = "Previous Buffer" })
vim.keymap.set("n", "<S-l>", ":bn<CR>", { desc = "Next Buffer" })

vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { desc = "Resize Window Down" })
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", { desc = "Resize Window Up" })
vim.keymap.set("n", "<C-Left>", ":vertical resize +2<CR>", { desc = "Resize Window Left" })
vim.keymap.set("n", "<C-Right>", ":vertical resize -2<CR>", { desc = "Resize Window Right" })

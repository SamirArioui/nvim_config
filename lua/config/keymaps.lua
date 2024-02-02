-- Lazy
vim.api.nvim_del_keymap("n", "<leader>L")
vim.api.nvim_del_keymap("n", "<leader>l")
vim.keymap.set("n", "<leader>L", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- Windows
vim.api.nvim_del_keymap("n", "<leader>wd")
vim.api.nvim_del_keymap("n", "<leader>ww")
vim.api.nvim_del_keymap("n", "<leader>w-")
vim.api.nvim_del_keymap("n", "<leader>w|")
vim.api.nvim_del_keymap("n", "<leader>-")
vim.api.nvim_del_keymap("n", "<leader>|")
vim.keymap.set("n", "<leader>kk", "<C-W>p", { desc = "Other window", remap = true })
vim.keymap.set("n", "<leader>kd", "<C-W>c", { desc = "Delete window", remap = true })
vim.keymap.set("n", "<leader>kv", "<C-W>s", { desc = "Split window below", remap = true })
vim.keymap.set("n", "<leader>kf", "<C-W>v", { desc = "Split window below", remap = true })

-- Save file
vim.keymap.set({ "x", "n", "s" }, "<leader>w", "<cmd>w<cr><esc>", { desc = "Save file", remap = true })

-- tmux nav
vim.keymap.set("n", "<C-h>", "<cmd>NvimTmuxNavigateLeft<cr>")
vim.keymap.set("n", "<C-j>", "<cmd>NvimTmuxNavigateDown<cr>")
vim.keymap.set("n", "<C-k>", "<cmd>NvimTmuxNavigateUp<cr>")
vim.keymap.set("n", "<C-l>", "<cmd>NvimTmuxNavigateRight<cr>")

-- tabs
vim.api.nvim_del_keymap("n", "<leader><tab>l")
vim.api.nvim_del_keymap("n", "<leader><tab>f")
vim.api.nvim_del_keymap("n", "<leader><tab><tab>")
vim.api.nvim_del_keymap("n", "<leader><tab>]")
vim.api.nvim_del_keymap("n", "<leader><tab>d")
vim.api.nvim_del_keymap("n", "<leader><tab>[")

-- improved word with operators
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "cw", "ciw")
vim.keymap.set("n", "yw", "yiw")
vim.keymap.set("n", "dw", "diw")
vim.keymap.set("n", "vw", "viw")

-- Scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scolling Down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scolling Up" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next Matching" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous Matching" })

-- Telescope tmux
vim.keymap.set("n", "<leader>ts", "<cmd>Telescope tmux sessions<cr>", { desc = "Tmux Sessions" })
vim.keymap.set("n", "<leader>tw", "<cmd>Telescope tmux windows<cr>", { desc = "Tmux Windows" })

-- Keep paste
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste Keep" })

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

-- tabs
vim.api.nvim_del_keymap("n", "<leader><tab>l")
vim.api.nvim_del_keymap("n", "<leader><tab>f")
vim.api.nvim_del_keymap("n", "<leader><tab><tab>")
vim.api.nvim_del_keymap("n", "<leader><tab>]")
vim.api.nvim_del_keymap("n", "<leader><tab>d")
vim.api.nvim_del_keymap("n", "<leader><tab>[")

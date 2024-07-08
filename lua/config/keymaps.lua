-- Windows
vim.keymap.set("n", "<leader>wk", "<C-W>p", { desc = "Other window", remap = true })
vim.keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete window", remap = true })
vim.keymap.set("n", "<leader>wv", "<C-W>s", { desc = "Split window below", remap = true })
vim.keymap.set("n", "<leader>wf", "<C-W>v", { desc = "Split window below", remap = true })

-- Save file
vim.keymap.set({ "x", "n", "s" }, "<leader>bs", "<cmd>w<cr><esc>", { desc = "Save file", remap = true })

-- improved word with operators
vim.keymap.set("n", "J", "mzJ`z")

-- Scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scolling Down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scolling Up" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next Matching" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous Matching" })

-- Keep paste
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste Keep" })

local config = function()
	local telescope = require("telescope")
	telescope.setup({})
	telescope.load_extension("fzf")
	local builtin = require("telescope.builtin")
	vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
	vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
	vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffer List" })
	vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help Tags" })
	vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Recent Files" })
	vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Keymaps" })
	vim.keymap.set("n", "<leader>fo", builtin.vim_options, { desc = "Keymaps" })
	vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Diagnostics" })
end

return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = config,
}

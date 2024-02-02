return {
	"folke/which-key.nvim",
	opts = {
		defaults = {
			mode = { "n", "v" },
			["<leader>k"] = { name = "+windows" },
			["<leader>t"] = { name = "+tmux" },
		},
	},
}

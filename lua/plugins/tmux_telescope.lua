local config = function()
	require("telescope").load_extension("tmux")
end

return {
	"camgraff/telescope-tmux.nvim",
	config = config,
}

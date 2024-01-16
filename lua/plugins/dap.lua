local M = {
	"rcarriga/nvim-dap-ui",
	dependencies = {
		"mfussenegger/nvim-dap",
		"williamboman/mason.nvim",
		"jay-babu/mason-nvim-dap.nvim",
	},
}

function M.config()
	require("mason-nvim-dap").setup({
		ensure_installed = { "python", "codelldb" },
		handlers = {}, -- sets up dap in the predefined manner
	})
end

return M

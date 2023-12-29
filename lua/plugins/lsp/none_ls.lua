local list_lint_foramatter = {
	"black",
	"isort",
	"stylua",
	"flake8",
	"rustfmt",
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local function format_on_save(current_client, bufnr)
	if current_client.supports_method("textDocument/formatting") then
		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			buffer = bufnr,
			callback = function()
				vim.lsp.buf.format({
					async = false,
				})
			end,
		})
	end
end

local config = function()
	local null_ls = require("null-ls")
	local mason_null_ls = require("mason-null-ls")

	local formatting = null_ls.builtins.formatting
	local diagnostics = null_ls.builtins.diagnostics

	mason_null_ls.setup({
		ensure_installed = list_lint_foramatter,
		automatic_installation = true,
	})

	null_ls.setup({
		debug = false,
		sources = {
			formatting.black.with({ extra_args = { "--fast" } }),
			formatting.isort,
			formatting.stylua,
			formatting.rustfmt,
			diagnostics.flake8,
		},
		on_attach = format_on_save,
	})
end

return {
	"nvimtools/none-ls.nvim",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" }, -- to enable uncomment this
	dependencies = {
		"jay-babu/mason-null-ls.nvim",
	},
	config = config,
}

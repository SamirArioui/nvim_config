local function get_sources()
	local null_ls = require("null-ls")
	local formatting = null_ls.builtins.formatting
	local diagnostics = null_ls.builtins.diagnostics

	local sources = {}
	for _, formatter in ipairs(FORMATTERS) do
		table.insert(sources, formatting[formatter])
	end
	for _, linter in ipairs(LINTERS) do
		table.insert(sources, diagnostics[linter])
	end
	return sources
end

local function get_fmt_lint_list()
	local list = {}
	for _, item in ipairs(FORMATTERS) do
		table.insert(list, item)
	end
	for _, item in ipairs(LINTERS) do
		table.insert(list, item)
	end
	return list
end

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

local M = {
	"nvimtools/none-ls.nvim",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" }, -- to enable uncomment this
	dependencies = {
		"jay-babu/mason-null-ls.nvim",
	},
}

function M.config()
	local null_ls = require("null-ls")
	local mason_null_ls = require("mason-null-ls")

	mason_null_ls.setup({
		ensure_installed = get_fmt_lint_list(),
		automatic_installation = true,
	})

	null_ls.setup({
		debug = false,
		sources = get_sources(),
		on_attach = format_on_save,
	})
end

return M

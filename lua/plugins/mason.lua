local servers = {
	"lua_ls",
	"bashls",
	"pyright",
	"rust_analyzer",
    "html",
    "cssls",
    "tsserver",
    "jsonls",
}

local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  },
}

function M.config()
    require("mason").setup {
        ui = {
            border = "rounded",
        },
    }

    require("mason-lspconfig").setup {
        ensure_installed = servers,
    }
end

return M

local opts = {
    ensure_installed = { "rust", "c", "lua", "vim", "vimdoc", "query", "python", "bash", "typescript", "javascript", "html", "css" },
    sync_install = false,
    ignore_install = { "" },
    highlight = { enable = true },
    indent = { enable = true },
}

local M = {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
}

function M.config()
    require("nvim-treesitter.configs").setup(opts)
end

return M

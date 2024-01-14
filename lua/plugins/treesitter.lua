local opts = {
    ensure_installed = { "rust", "c", "lua", "vim", "vimdoc", "query", "python", "bash", "typescript", "javascript", "html", "css" },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
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

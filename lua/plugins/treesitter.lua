local opts = {
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "bash", "typescript", "javascript", "html", "css" },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
    autotag = { enable = true },
    auto_install = true,
}

local config = function()
    local treesitter = require("nvim-treesitter.configs")
    treesitter.setup(opts)
end

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = config,
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
}

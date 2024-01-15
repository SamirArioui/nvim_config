-- disable netrw
vim.g.loaded_netrwPlugin = 0

-- related to nvim configuration
require("core.globals")
require("core.launch")
require("core.options")
require("core.keymaps")
require("core.autocmd")

-- plugins
spec("plugins.colorscheme")
spec("plugins.devicon")
spec("plugins.treesitter")
spec("plugins.lazygit")
spec("plugins.mason")
spec("plugins.schemastore")
spec("plugins.lspconfig")
spec("plugins.cmp")
spec("plugins.none-ls")
spec("plugins.telescope")
spec("plugins.nvim-tree")
spec("plugins.comment")
spec("plugins.tmux-nav")
spec("plugins.gitsigns")
spec("plugins.surround")
spec("plugins.lualine")
spec("plugins.autopairs")
spec("plugins.indentline")
spec("plugins.project")
spec("plugins.alpha")
spec("plugins.fidget")

-- load lazy (put in last of init.lua)
require("plugins.lazy")

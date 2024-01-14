-- related to nvim configuration
require("core.launch")
require("core.options")
require("core.keymaps")

-- plugins
spec("plugins.colorscheme")
spec("plugins.devicon")
spec("plugins.treesitter")
spec("plugins.lazygit")
spec("plugins.mason")
spec("plugins.lspconfig")

-- load lazy (put in last of init.lua)
require("plugins.lazy")

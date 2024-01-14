-- related to nvim configuration
require("core.launch")
require("core.options")
require("core.keymaps")
spec("plugins.colorscheme")
spec("plugins.devicon")
spec("plugins.treesitter")
-- load lazy (put in last of init.lua)
require("plugins.lazy")

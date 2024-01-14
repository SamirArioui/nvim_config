-- related to nvim configuration
require("core.launch")
require("core.options")
require("core.keymaps")
spec("plugins.colorscheme")
-- load lazy (put in last of init.lua)
require("plugins.lazy")

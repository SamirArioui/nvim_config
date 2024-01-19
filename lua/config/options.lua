vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt

opt.confirm = false -- Confirm to save changes before exiting modified buffer
opt.scrolloff = 8 -- Lines of context
opt.shiftround = true -- Round indent
opt.shiftwidth = 4 -- Size of an indent
opt.sidescrolloff = 8 -- Columns of context
opt.colorcolumn = "80"
opt.swapfile = false
opt.backup = false
opt.iskeyword:append("-")

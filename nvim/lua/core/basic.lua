local opt = vim.opt
local g = vim.g

opt.number = true
opt.relativenumber = true

opt.cursorline = true
-- opt.colorcolumn = "120"

opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 0

opt.autoread = true
opt.showmode = false
opt.scrolloff = 10

opt.splitbelow = true
opt.splitright = true

opt.ignorecase = true
opt.smartcase = true

opt.hlsearch = false

opt.clipboard = "unnamedplus"

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
opt.termguicolors = true

opt.swapfile = false

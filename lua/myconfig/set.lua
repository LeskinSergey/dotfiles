local g = vim.g
local opt = vim.opt
local o = vim.o

opt.mouse = 'a'
opt.termguicolors = true
opt.clipboard = 'unnamedplus'
opt.number = true
opt.relativenumber = true
opt.ignorecase = true
opt.wrap = false
opt.colorcolumn = '97'
opt.scrolloff = 7
opt.cmdheight = 1
o.pumheight = 15
o.showtabline = 2
--
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true
opt.listchars = { eol = '¬', tab = '>~', trail = '~', extends = '>', precedes = '<' }
opt.list = true

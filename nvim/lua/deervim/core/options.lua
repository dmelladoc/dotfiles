vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opt = vim.opt

opt.showcmd = true
opt.laststatus = 2
opt.cursorline = true

-- identacion
opt.tabstop = 4
opt.shiftwidth = 4
opt.shiftround = true
opt.expandtab = true --espacios
opt.smartindent = true --identar

--Line numbers
opt.number = true
opt.relativenumber = true
opt.spelllang = { 'en', 'es_CL' }

opt.winminwidth = 5 --minimo ventana
--opt.winheight = 10 -- altura minima


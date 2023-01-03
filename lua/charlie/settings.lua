local o = vim.o
local wo = vim.wo
local bo = vim.bo
local api = vim.api

-- global options
o.swapfile = false
vim.opt.backup = false
vim.opt.undodir = '/tmp'
vim.opt.undofile = true

o.hlsearch = false
o.incsearch = true
o.ignorecase = true
o.smartcase = true

o.termguicolors = true

o.scrolloff = 4

o.laststatus = 2

o.expandtab = true
o.shiftwidth = 4
o.tabstop = 4
o.smartindent = true

-- window-local options
wo.number = true
wo.relativenumber = true
wo.colorcolumn = '80'
wo.signcolumn = 'yes'
wo.wrap = false
wo.cursorline = true
wo.cursorlineopt = 'number,line'
api.nvim_set_hl(0,'cursorline', {
    ctermbg = 0,
    underline = false})

-- buffer-local options


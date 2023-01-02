local o = vim.o
local wo = vim.wo
local bo = vim.bo
local api = vim.api

-- global options
o.swapfile = true
o.dir = '/tmp'

o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.smartcase = true

o.scrolloff = 1

o.laststatus = 2

o.expandtab = true
o.shiftwidth = 4
o.tabstop = 4
o.smartindent = true

-- window-local options
wo.relativenumber = true
wo.wrap = false
wo.cursorline = true
wo.cursorlineopt = 'number,line'
api.nvim_set_hl(0,'cursorline', {
    ctermbg = 0,
    underline = false})

-- buffer-local options


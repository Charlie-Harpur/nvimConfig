local setMap = vim.keymap.set

-- Set leader key
vim.g.mapleader = ' '
setMap({'n', 'v'}, '<Space>', '<Nop>', { silent = true })

-- Open netrw
setMap('n', '<leader>pv', vim.cmd.Ex)

-- Set current buffer directory as working directory
setMap('n', '<leader>cd', ':lcd %:h<CR>')

-- Move selected lines up/down
setMap('v', 'J', ":m '>+1<CR>gv=gv")
setMap('v', 'K', ":m '<-2<CR>gv=gv")

-- Center during half page scroll
setMap('n', '<C-d>', '<C-d>zz')
setMap('n', '<C-u>', '<C-u>zz')

-- Center while cycling search results
setMap('n', 'n', 'nzzzv')
setMap('n', 'N', 'Nzzzv')

-- Copy and paste from system clipboard
setMap({'n', 'v'}, '<leader>sp', '"+p') -- Paste
setMap({'n', 'v'}, '<leader>y', '"+y')
setMap('n', '<leader>Y', '"+Y')

-- Maintain copy buffer through deletions
setMap('x', '<leader>p', '"_dP') -- paste and replace
setMap({'n', 'v'}, '<leader>d', '"_d') -- regular delete
setMap('n', '<leader>D', '"_D') -- EOL delete

setMap({'n', 'i', 'v'}, '<C-c>', '<Esc>')

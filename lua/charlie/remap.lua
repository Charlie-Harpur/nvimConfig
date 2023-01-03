-- Set leader key
vim.g.mapleader = ' '
vim.keymap.set({'n', 'v'}, '<Space>', '<Nop>', { silent = true })
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Change working directory to current buffer
vim.keymap.set('n', '<leader>cd', ':lcd %:h<CR>')

-- Move selected lines up/down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Center during half page scroll
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Center while cycling search results
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Copy and paste from system clipboard
vim.keymap.set({'n', 'v'}, '<leader>sp', '"+p') -- Paste
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

-- Maintain copy buffer through deletions
vim.keymap.set('x', '<leader>p', '"_dP') -- paste and replace
vim.keymap.set({'n', 'v'}, '<leader>d', '"_d') -- regular delete

vim.keymap.set({'n', 'i', 'v'}, '<C-c>', '<Esc>')

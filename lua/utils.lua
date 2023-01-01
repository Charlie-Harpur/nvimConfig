local api = vim.api

-- Highlight on yank
local yankGroup = api.nvim_create_augroup('YankHighlight', {clear = true})
api.nvim_create_autocmd('TextYankPost',
{
    command = 'silent! lua vim.hightlight.on_yank()',
    group = yankGroup
})

-- Show cursor only in active window
local cursorGroup = api.nvim_create_augroup('CursorLine', {clear = true})
api.nvim_create_autocmd(
{'InsertLeave', 'WinEnter'},
{pattern = '*', command = 'set cursorline', group = cursorGroup})
api.nvim_create_autocmd(
{'InsertEnter', 'WinLeave'},
{pattern = '*', command = 'set nocursorline', group = cursorGroup})

-- Remove all trailing whitespace on write
api.nvim_create_autocmd('BufWritePre',
{pattern = '*', callback = function()
    vim.schedule(killWhite)
end,
})
     
function killWhite()
    local line, col = unpack(api.nvim_win_get_cursor(0))
    api.nvim_command([[%s/\s\+$//e]])
    api.nvim_command([[noh]])

    local lastLine = vim.fn.line('$')
    if line > lastLine then
        line = lastLine

    end
    api.nvim_win_set_cursor(0,{line, col})

end

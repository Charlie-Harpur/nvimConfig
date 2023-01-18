local indentBlankline = require("indent_blankline")

vim.opt.list = true
vim.opt.listchars:append "eol:¬"

indentBlankline.setup {
    show_end_of_line = true,
    char = '¦'
}

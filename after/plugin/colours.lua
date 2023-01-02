function ColourMyPencils(colour)
    colour = colour or 'rose-pine'
    vim.cmd.colorscheme(colour)
end

ColourMyPencils()

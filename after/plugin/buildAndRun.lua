local api = vim.api

-- C++ build and run current directory using current buffer as name
function BuildRunCPP()
    local compilePath = vim.fn.expand('%:r')
    api.nvim_command([[:!g++ -fdiagnostics-color=always -g *.cpp -o ]] ..
    compilePath .. [[.exe]])

    api.nvim_command([[:!]] .. compilePath .. [[.exe]])
end

BuildRunCPP()

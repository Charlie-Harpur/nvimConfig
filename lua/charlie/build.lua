local api = vim.api

-- Build using current buffer as name and directory
function CPPBuild()
    local compilePath = vim.fn.expand('%:r')
    api.nvim_command([[:cd %:h]])
    api.nvim_command([[:!g++ -fdiagnostics-color=always -g *.cpp -o ]] ..
    compilePath .. [[.exe]])
end

-- C++ build and run using current buffer as name and directory
function CPPBuildRun()
    local compilePath = vim.fn.expand('%:r')
    api.nvim_command([[:cd %:h]])
    api.nvim_command([[:!g++ -fdiagnostics-color=always -g *.cpp -o ]] ..
    compilePath .. [[.exe]])

    api.nvim_command([[:!]] .. compilePath .. [[.exe]])
end

--function CPPBuildDebug()

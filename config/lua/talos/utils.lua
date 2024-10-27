local M = {}

function M.get_dependency(name) 
    local path = vim.env.NVIM_PATH .. name
    return path
end

return M

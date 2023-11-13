local utils_status, util = pcall(require, "lspconfig/util")
if not utils_status then
    return
end

local M = {}
M = {
    cmd = {'nomicfoundation-solidity-language-server', '--stdio'},
    filetypes = { 'solidity' },
    root_dir = util.find_git_ancestor,
    single_file_support = true,
}
return M

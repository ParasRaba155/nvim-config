local utils_status, util = pcall(require, "lspconfig/util")
if not utils_status then
    return
end
local M = {}
M = {
    cmd = {"gopls", "serve"},
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    settings = {
        gopls = {
            completeUnimported = true,
            usePlaceholders    = true,
            staticcheck        = true,
            vulncheck          = "Imports",
            gofumpt            = true,
            analyses           = {
                -- unusedparams = true,
                -- fieldalignment = true,
                nilness        = true,
                unusedwrite    = true,
                -- useany      = false,
                fillstruct     = true,
            },
            hints              = {
                assignVariableTypes    = true,
                functionTypeParameters = true,
                compositeLiteralFields = true,
                compositeLiteralTypes  = true,
                constantValues         = true,
                parameterNames         = true,
                rangeVariableTypes     = true
            },
        }
    }
}

vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = '*.go',
    callback = function()
        vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })
    end
})

return M

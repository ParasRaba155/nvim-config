local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
    return
end

local augroup      = vim.api.nvim_create_augroup("LspFormatting", {})

local formatting   = null_ls.builtins.formatting
local completion   = null_ls.builtins.completion
local diagnostics  = null_ls.builtins.diagnostics
--local conditional = function(fn)
--    local utils = require("null-ls.utils").make_conditional_utils()
--    return fn(utils)
--end
local code_actions = null_ls.builtins.code_actions

local opts         = {
    debug = true,
    sources = {
        formatting.gofumpt,
        formatting.goimports_reviser,
        formatting.eslint,
        -- formatting.eslint,
        -- formatting.sqlfluff.with({
        --     extra_args = { "--dialect", "postgres" }, -- change to your dialect
        -- }),
        code_actions.gomodifytags,
        code_actions.eslint,
        -- code_actions.gitsings,
        completion.spell,
        completion.luasnip,
        diagnostics.staticcheck,
        diagnostics.eslint,
        -- diagnostics.eslint,
        -- diagnositcs.golangci_lint,
        diagnostics.todo_comments,
        -- diagnositcs.tsc,
    },
}

null_ls.setup(opts)

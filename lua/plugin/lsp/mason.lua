local servers = {
    "lua_ls",
    "gopls",
    "docker_compose_language_service",
    "dockerls",
    "sqlls",
    "pyright",
    "harper_ls",
    "zls",
    "rust_analyzer",
}

local settings = {
    ui = {
        border = "rounded",
        icons = {
            package_installed = "◍",
            package_pending = "◍",
            package_uninstalled = "◍",
        },
    },
    log_level = vim.log.levels.INFO,
    max_concurrent_installers = 4,
}

require("mason").setup(settings)

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

require("mason-lspconfig").setup({
    ensure_installed = servers,
    automatic_enable = false,
})

for _, server in ipairs(servers) do
    local opts = {
        capabilities = capabilities,
        on_attach = require("plugin.lsp.lsp").on_attach,
    }

    local ok, server_opts = pcall(
        require,
        "plugin.lsp.settings." .. server
    )

    if ok then
        opts = vim.tbl_deep_extend("force", opts, server_opts)
    end

    vim.lsp.config(server, opts)
    vim.lsp.enable(server)
end


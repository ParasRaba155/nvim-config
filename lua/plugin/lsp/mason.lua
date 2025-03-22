local utils_status, util = pcall(require, "lspconfig/util")
if not utils_status then
    print("could not load lspconfig/util in mason.lua")
    return
end

local servers = {
    "lua_ls",
    "gopls",
    "tsserver",
    "docker_compose_language_service",
    "dockerls",
    "sqlls",
    "pyright",
    "harper_ls",
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

local mason = require('mason')

mason.setup(settings)

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Ensure the servers above are installed
local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup {
  ensure_installed = servers,
}

mason_lspconfig.setup_handlers {
  function(server_name)
    require('lspconfig')[server_name].setup {
      capabilities = capabilities,
      on_attach = require('plugin.lsp.lsp').on_attach,
      settings = servers[server_name],
    }
  end,
}

local global_opts = {}

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  print("Lspconfig not found in maosn.lua")
	return
end

-- loop through the servers
for _, server in pairs(servers) do
    local opts = {
        -- getting "on_attach" and capabilities from handlers
        on_attach = require("plugin.lsp.lsp").on_attach,
        capabilities = capabilities,
    }

    -- get the server name
    server = vim.split(server, "@")[1]

    local require_ok, conf_opts = pcall(require, "plugin.lsp.settings." .. server)
    if require_ok then
        opts = vim.tbl_deep_extend("force", global_opts, opts, conf_opts)
    end

    -- pass them to lspconfig
    lspconfig[server].setup(opts)
end

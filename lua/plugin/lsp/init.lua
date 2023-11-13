local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    print("could not load lspconfig")
    return
end

require("plugin.lsp.mason")
require("plugin.lsp.lsp")
require("plugin.lsp.cmp")
require("plugin.lsp.null-ls")

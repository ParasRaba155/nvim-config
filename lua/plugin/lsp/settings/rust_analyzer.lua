local M = {}
M = {
    settings = {
    ['rust-analyzer'] = {
      diagnostics = {
        enable = false;
      },
      imports = {
        granularity = {
            group = "module",
        },
        prefix = "self",
        },
        cargo = {
            buildScripts = {
                enable = true,
            },
        },
        procMacro = {
            enable = true
        },
    }
  }
}
return M

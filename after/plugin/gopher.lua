local opts = {
    commands = {
        go = "go",
        gomodifytags = "gomodifytags",
        gotests = "gotests", -- also you can set custom command path
        impl = "impl",
        iferr = "iferr",
    },
}
local gopher = require("gopher")
gopher.setup(opts)

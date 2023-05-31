vim.keymap.set("n","<leader>dt",":lua require('dap-go').debug_test()", { desc = "[D]ebug [T]est" })

require("dap-go").setup()

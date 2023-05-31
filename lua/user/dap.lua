-- keymaps for dap config
vim.keymap.set( "n", "<F1>", ":lua require('dap').continue()<CR>" )
vim.keymap.set( "n", "<F2>", ":lua require('dap').step_over()<CR>" )
vim.keymap.set( "n", "<F3>", ":lua require('dap').step_into()<CR>" )
vim.keymap.set( "n", "<F4>", ":lua require('dap').step_out()<CR>" )
vim.keymap.set( "n", "<leader>b", ":lua require('dap').toggle_breakpoint()<CR>" )
vim.keymap.set( "n", "<leader>B", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition : '))<CR>" )
vim.keymap.set( "n", "<leader>lp", ":lua require('dap').set_breakpoint(nil,nil,vim.fn.input('Log Point Message: '))<CR>" )
vim.keymap.set( "n", "<leader>dr", ":lua require('dap').repl.open()<CR>" )

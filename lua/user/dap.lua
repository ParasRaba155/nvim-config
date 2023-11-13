vim.keymap.set( "n", "<F4>", ":lua require('dapui').toggle()<CR>" )
vim.keymap.set( "n", "<F9>", ":lua require('dap').continue()<CR>" )

vim.keymap.set( "n", "<F1>", ":lua require('dap').step_over()<CR>" )
vim.keymap.set( "n", "<F2>", ":lua require('dap').step_into()<CR>" )
vim.keymap.set( "n", "<F3>", ":lua require('dap').step_out()<CR>" )

vim.keymap.set( "n", "<leader>dhh", ":lua require('dap.ui.variables').hover()<CR>" )
vim.keymap.set( "v", "<leader>dhv", ":lua require('dap.ui.variables').visual_hover()<CR>" )

vim.keymap.set( "n", "<leader>duh", ":lua require('dap.ui.widgets').hover()<CR>" )
vim.keymap.set( "n", "<leader>duf", ":lua local widgets=require('dap.ui.widgets');widgets.centered_float(widgets.scopes)<CR>" )

vim.keymap.set( "n", "<leader>dro", ":lua require('dap').repl.open()<CR>" )
vim.keymap.set( "n", "<leader>drl", ":lua require('dap').repl.run_last()<CR>" )

vim.keymap.set( "n", "<leader>dbc", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>" )
vim.keymap.set( "n", "<leader>dbm", ":lua require('dap').set_breakpoint({ nil, nil, vim.fn.input('Log point message: ') )<CR>" )
vim.keymap.set( "n", "<leader>b", ":lua require('dap').toggle_breakpoint()<CR>")

vim.keymap.set( "n", "<leader>dc", ":lua require('dap.ui.variables').scopes()<CR>" )

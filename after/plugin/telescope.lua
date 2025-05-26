local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'find in commited files' })
vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>td', builtin.diagnostics, { desc = '[?] [T]elescope [D]iagnostics' })

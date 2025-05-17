require('flash').setup({})
vim.keymap.set('n', '<leader>ls', function() require("flash").jump() end, { desc = 'Flash Jump' })
vim.keymap.set('n', '<leader>lt', function() require("flash").treesitter() end, { desc = 'Flash Treesitter' })
vim.keymap.set('n', '<leader>lr', function() require("flash").treesitter_search() end, { desc = 'Flash Treesitter search' })

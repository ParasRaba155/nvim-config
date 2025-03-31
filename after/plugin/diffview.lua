vim.keymap.set("n", "<leader>dv", function()
    vim.cmd("DiffviewOpen")
end, { desc = "Open Diffview" })

vim.keymap.set("n", "<leader>dc", function()
    vim.cmd("DiffviewClose")
end, { desc = "Open Diffview" })


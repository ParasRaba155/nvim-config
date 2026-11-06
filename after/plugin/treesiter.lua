-- Enable Tree-sitter highlighting for installed parsers.
vim.api.nvim_create_autocmd("FileType", {
    callback = function(args)
        -- Enable highlighting
        pcall(vim.treesitter.start, args.buf)

        -- Enable Tree-sitter folding
        vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
        vim.wo.foldmethod = "expr"
    end,
})


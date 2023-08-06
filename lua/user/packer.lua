-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- tokyonight theme
    use 'folke/tokyonight.nvim'

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    use("mbbill/undotree")

    -- harpoon for marking and jumping between multiple files
    use("theprimeagen/harpoon")

    -- for git
    use("tpope/vim-fugitive")

    -- for git signs
    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }

    -- db connection
    use ("tpope/vim-dadbod")
    use {
        "kristijanhusak/vim-dadbod-ui",
        dependencies = { "tpope/vim-dadbod"},
    }
    use {
        "kristijanhusak/vim-dadbod-completion",
        dependencies = { "tpope/vim-dadbod"},
    }



    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        run = ":MasonUpdate",
    }

    -- DAP config
    use("mfussenegger/nvim-dap") -- for general purpose dap
    use("rcarriga/nvim-dap-ui")
    use("leoluz/nvim-dap-go") -- dap for golang
    use("theHamsta/nvim-dap-virtual-text")

    -- completions
    use("hrsh7th/nvim-cmp")
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use("hrsh7th/cmp-nvim-lsp")
    use({
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
    })
    use("rafamadriz/friendly-snippets")

    -- null ls for general purpose lsp configs
    use({
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            require("null-ls").setup()
        end,
        requires = { "nvim-lua/plenary.nvim" },
    })

    -- for refactor
    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            {"nvim-lua/plenary.nvim"},
            {"nvim-treesitter/nvim-treesitter"}
        }
    }

    -- for status bar
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- git gutter for git diffs
    use("airblade/vim-gitgutter")

    -- for todo
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {
            }
        end
    }

    -- color picker
    use 'NvChad/nvim-colorizer.lua'

    use {
        "olexsmir/gopher.nvim",
        requires = { -- dependencies
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },

    -- for auto closing tag 
    use 'windwp/nvim-ts-autotag',

    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    }),

    use({
        'Wansmer/treesj',
        requires = { 'nvim-treesitter' },
    }),

    -- awesome theme
    use("rebelot/kanagawa.nvim"),

    -- treesiter context for folding functions
    use("nvim-treesitter/nvim-treesitter-context")

}
end)

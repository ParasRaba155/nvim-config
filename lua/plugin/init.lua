return {
    -- telescope
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6', branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require("telescope").setup({})

           require "plugin.multigrep".setup()
        end,
    },
    -- tokyonight theme
    'folke/tokyonight.nvim',

    -- treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    },

    -- treesitter object
    {
        'nvim-treesitter/nvim-treesitter-textobjects',
    },

    'mbbill/undotree',

    -- harpoon for marking and jumping between multiple files
    'theprimeagen/harpoon',

    -- for git
    'tpope/vim-fugitive',

    -- for git signs
    {
        'lewis6991/gitsigns.nvim',
        version = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    },

    -- db connection
    'tpope/vim-dadbod',
    {
        'kristijanhusak/vim-dadbod-ui',
        dependencies = { 'tpope/vim-dadbod'},
    },
    {
        'kristijanhusak/vim-dadbod-completion',
        dependencies = { 'tpope/vim-dadbod'},
    },

    'neovim/nvim-lspconfig',
    {
        'williamboman/mason.nvim',
        dependencies = {
            'williamboman/mason-lspconfig.nvim',
        },
        build = ':MasonUpdate',
        config = function()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "",
					package_pending = "",
					package_uninstalled = "",
				},
			}
		})
		require("mason-lspconfig").setup()
        end,
    },

    -- DAP config
    'mfussenegger/nvim-dap', -- for general purpose dap
    -- 'rcarriga/nvim-dap-ui',
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio"
        }
    },
    'leoluz/nvim-dap-go', -- dap for golang
    'theHamsta/nvim-dap-virtual-text',

    -- completions
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lsp',
    {
        'L3MON4D3/LuaSnip',
        dependencies = { 'rafamadriz/friendly-snippets' },
        version = "v2.*",
    },
    'rafamadriz/friendly-snippets',

    -- null ls for general purpose lsp configs
    {
        'nvimtools/none-ls.nvim',
        config = function()
            require('null-ls').setup()
        end,
        dependencies = { 'nvim-lua/plenary.nvim' },
    },

    -- for status bar
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons', opt = true }
    },

    -- git gutter for git diffs
    'airblade/vim-gitgutter',

    -- for todo
    {
        'folke/todo-comments.nvim',
        dependencies = 'nvim-lua/plenary.nvim',
        config = function()
            require('todo-comments').setup {
            }
        end
    },

    -- color picker
   'NvChad/nvim-colorizer.lua',

    {
        'olexsmir/gopher.nvim',
        dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-treesitter/nvim-treesitter',
        }
    },

    -- for auto closing tag 
    'windwp/nvim-ts-autotag',

    -- neovim surround
    'kylechui/nvim-surround',

    {
        'Wansmer/treesj',
        dependencies = { 'nvim-treesitter' },
    },

    -- awesome theme
   'rebelot/kanagawa.nvim',

    -- treesiter context for folding functions
    -- 'nvim-treesitter/nvim-treesitter-context'

    -- twilight by folke to highlight the block working on
    -- Lua
    {
      "folke/twilight.nvim",
      opts = {
          exclude = {'md'}, -- exclude these filetypes
      }
    },

    -- mini files
    { 'echasnovski/mini.nvim', version = false },

    ---- precognition for visual help text on next set of chars
    -- {"tris203/precognition.nvim",},

    ---- hardtime to fix some bad vim habits
    -- {
    --     "m4xshen/hardtime.nvim",
    --     dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    --     opts = {}
    -- },

    -- format only the diffs
    {
        'joechrisellis/lsp-format-modifications.nvim', version = false
    },

    { "sindrets/diffview.nvim" },


    {
        "folke/flash.nvim",
        event = "VeryLazy",
        ---@type Flash.Config
        opts = {},
        version='2.1.0',
    }
}

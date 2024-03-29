vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- split screen and navigation
vim.keymap.set("n", "<M-v>", ":vsplit<CR><C-w>l", { noremap = true })
vim.keymap.set("n", "<M-h>", ":wincmd h<CR>", { noremap = true })
vim.keymap.set("n", "<M-l>", ":wincmd l<CR>", { noremap = true })
vim.keymap.set("n", "<M-j>", ":wincmd j<CR>", { noremap = true })
vim.keymap.set("n", "<M-k>", ":wincmd k<CR>", { noremap = true })
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -

-- better buffer manipulation using tab and shift tab
vim.api.nvim_set_keymap("n", "<Tab>", ":bnext<cr>", { noremap = true })
vim.keymap.set("n", "<bs>", ":bprevious<cr>", { noremap = true })

-- Buffers mapping using Telescope
vim.keymap.set('n', '<S-Tab>', ":Telescope buffers<CR>",
    { noremap = true, silent = true, nowait = true })

-- spell check and correcting the worjkjk spellin
vim.keymap.set("n", "<F7>", ":set spell!<CR>", { noremap = true})

-- scroll horiontally
vim.keymap.set("n", "<leader>l", "20zl")

-- tab management
vim.keymap.set("n", "<A-Right>", ":tabnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-Left>", ":tabprevious<CR>", { noremap = true, silent = true })

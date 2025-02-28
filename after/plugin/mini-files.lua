M = -- No need to copy this inside `setup()`. Will be used automatically.
{
  -- General options
  options = {
    -- Whether to use for editing directories
    use_as_default_explorer = false,
  },

  windows = {
    preview = false,
  },
}
require("mini.files").setup(M)
vim.keymap.set("n","<leader>o",":lua MiniFiles.open()<CR>")

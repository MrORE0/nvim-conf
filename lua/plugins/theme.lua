return {
  { "loctvl842/monokai-pro.nvim", opts = {
    filter = "pro",
    transparent_background = true,
  } },

  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = {
    transparent_mode = true,
  } },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai-pro",
    },
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
}

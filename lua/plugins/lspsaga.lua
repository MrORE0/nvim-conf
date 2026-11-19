return {
  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
      code_action = {
        num_shortcut = true,
        show_server_name = true,
        keys = { quit = "q", exec = "<CR>" },
      },
      symbol_in_winbar = { enable = false },
    },
  },
}

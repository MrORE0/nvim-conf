return {
  { "bufferline.nvim", enabled = false },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.inlay_hints = { enabled = false }

      -- Python: ruff lints, pyright only for hover / go-to-definition (ruff provides neither)
      opts.servers = opts.servers or {}
      opts.servers.pyright = vim.tbl_deep_extend("force", opts.servers.pyright or {}, {
        settings = { python = { analysis = { typeCheckingMode = "off" } } },
      })

      -- Code actions through the Lspsaga numbered menu
      opts.servers["*"] = opts.servers["*"] or {}
      opts.servers["*"].keys = opts.servers["*"].keys or {}
      local keys = opts.servers["*"].keys
      keys[#keys + 1] = {
        "<leader>ca",
        "<cmd>Lspsaga code_action<cr>",
        desc = "Code Action",
        mode = { "n", "v" },
        has = "codeAction",
      }
    end,
  },
}

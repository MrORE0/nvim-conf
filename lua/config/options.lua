-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.snacks_animate = false

-- Thicker-looking split borders: heavy box-drawing char + bold bright highlight
vim.opt.fillchars:append({
  vert = "┃", -- vertical split separator (heavy)
  horiz = "━", -- horizontal split separator (heavy)
  horizup = "┻",
  horizdown = "┳",
  vertleft = "┫",
  vertright = "┣",
  verthoriz = "╋",
})

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#ffffff", bold = true })
  end,
})
-- apply now too (ColorScheme may have already fired)
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#ffffff", bold = true })

-- OMNeT++ filetypes (set here so detection works for files opened from the command line)
vim.filetype.add({
  extension = {
    ned = "ned",
    msg = "omnetmsg",
  },
  filename = {
    ["omnetpp.ini"] = "omnetini",
  },
  pattern = {
    -- other .ini files inside OMNeT++ projects (simulations/ folder)
    [".*/simulations/.*%.ini"] = "omnetini",
  },
})

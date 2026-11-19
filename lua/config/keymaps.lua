-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Visual mode: select a word with `v`, press `r` to IncRename it.
-- Prefills the command line with the selection as the new name (no <CR>),
-- so you edit the name and hit Enter yourself. Shadows the default visual `r`.
vim.keymap.set("x", "r", function()
  local save = vim.fn.getreg("z")
  vim.cmd('normal! "zy')
  local word = vim.fn.getreg("z"):gsub("\n", "")
  vim.fn.setreg("z", save)
  vim.api.nvim_feedkeys(":IncRename " .. word, "n", false)
end, { desc = "IncRename selected word" })

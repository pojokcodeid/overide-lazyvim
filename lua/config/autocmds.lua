-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- for fix error last close buffer
vim.api.nvim_create_autocmd({ "QuitPre" }, {
  callback = function()
    vim.cmd("NvimTreeClose")
  end,
})

local autocmd = vim.api.nvim_create_autocmd
autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    vim.opt.statusline = "%#normal# "
  end,
})

-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.shiftwidth = 2 -- Size of an indent
opt.tabstop = 2    -- Number of spaces tabs count for

vim.g.autoformat = false
vim.g.python3_host_prog = '~/.pyenv/shims/python'

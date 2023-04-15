-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "J", "5j")
map("n", "K", "5k")
map("v", "J", "5j")
map("v", "K", "5k")

map("n", "<leader>wj", "<C-W>s", { desc = "Split window below" })
map("n", "<leader>wl", "<C-W>v", { desc = "Split window right" })

map("n", "<C-h>", ":<C-U>TmuxNavigateLeft<cr>", { noremap = true, silent = true })
map("n", "<C-l>", ":<C-U>TmuxNavigateRight<cr>", { noremap = true, silent = true })
map("n", "<C-j>", ":<C-U>TmuxNavigateDown<cr>", { noremap = true, silent = true })
map("n", "<C-k>", ":<C-U>TmuxNavigateUp<cr>", { noremap = true, silent = true })
map("n", "<C-\\>", ":<C-U>TmuxNavigatePrevious<cr>", { noremap = true, silent = true })

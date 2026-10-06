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

-- Claude code references: copy `@path` or `@path#Lstart-end` to the system clipboard
local function copy_claude_ref(line1, line2)
  local name = vim.api.nvim_buf_get_name(0)
  if name == "" then
    vim.notify("Buffer has no file name", vim.log.levels.WARN)
    return
  end
  local ref = "@" .. vim.fn.fnamemodify(name, ":.")
  if line1 then
    ref = line1 == line2 and ("%s#L%d"):format(ref, line1) or ("%s#L%d-%d"):format(ref, line1, line2)
  end
  vim.fn.setreg("+", ref)
  vim.notify("Copied " .. ref)
end

vim.api.nvim_create_user_command("ClaudeRef", function(opts)
  if opts.range > 0 then
    copy_claude_ref(opts.line1, opts.line2)
  else
    copy_claude_ref()
  end
end, { range = true, desc = "Copy Claude file/line reference" })

map("n", "<leader>cy", "<cmd>ClaudeRef<cr>", { desc = "Copy Claude file reference" })
map("x", "<leader>cy", ":ClaudeRef<cr>", { desc = "Copy Claude line reference" })

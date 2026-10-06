-- Seamless ctrl+h/j/k/l navigation between nvim splits and herdr/tmux panes.
local M = {}

local dirs = {
  h = { herdr = "left", tmux = "Left" },
  j = { herdr = "down", tmux = "Down" },
  k = { herdr = "up", tmux = "Up" },
  l = { herdr = "right", tmux = "Right" },
}

function M.go(key)
  if vim.env.HERDR_ENV then
    local win = vim.api.nvim_get_current_win()
    vim.cmd("wincmd " .. key)
    if vim.api.nvim_get_current_win() == win then
      vim.system({ "herdr", "pane", "focus", "--direction", dirs[key].herdr, "--current" })
    end
  else
    vim.cmd("NvimTmuxNavigate" .. dirs[key].tmux)
  end
end

return M

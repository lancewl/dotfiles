return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = function()
      local user = vim.env.USER or "User"
      user = user:sub(1, 1):upper() .. user:sub(2)
      return {
        auto_insert_mode = false,
        headers = {
          user = "   " .. user .. " ",
          assistant = "   Copilot ",
          tool = "   Tool: ",
        },
        window = {
          layout = "float",
          width = 0.4,
          height = 0.5,
          border = "rounded", -- 'single', 'double', 'rounded', 'solid'
          title = "  AI Assistant",
          zindex = 100, -- Ensure window stays on top
        },
      }
    end,
  },
}

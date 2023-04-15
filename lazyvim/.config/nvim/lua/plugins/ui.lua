return {
  { "akinsho/bufferline.nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = false },
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      local function shorten_str(str)
        if str:len() > 30 then
          return str:sub(1, 30) .. ".."
        else
          return str
        end
      end
      return {
        options = {
          theme = "auto",
          section_separators = { "", "" },
          component_separators = { "", "" },
        },
        sections = {
          lualine_a = {
            {
              "mode",
              fmt = function(str)
                return str:sub(1, 1)
              end,
            },
          },
          lualine_b = { { "branch", fmt = shorten_str } },
          lualine_c = {
            {
              "filename",
              file_status = true, -- displays file status (readonly status, modified status)
              path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
              shorting_target = 40, -- Shortens path to leave 40 space in the window
            },
          },
          lualine_x = { "encoding", "fileformat", { "filetype", colored = false } },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
        extensions = { "nvim-tree", "fzf" },
      }
    end,
  },
  {
    "goolord/alpha-nvim",
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      local logo = [[
      ██╗      █████╗ ███╗   ██╗ ██████╗███████╗██╗    ██╗██╗     
      ██║     ██╔══██╗████╗  ██║██╔════╝██╔════╝██║    ██║██║     
      ██║     ███████║██╔██╗ ██║██║     █████╗  ██║ █╗ ██║██║     
      ██║     ██╔══██║██║╚██╗██║██║     ██╔══╝  ██║███╗██║██║     
      ███████╗██║  ██║██║ ╚████║╚██████╗███████╗╚███╔███╔╝███████╗
      ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝╚══════╝ ╚══╝╚══╝ ╚══════╝
      ]]

      dashboard.section.header.val = vim.split(logo, "\n")
      return dashboard
    end,
  },
}

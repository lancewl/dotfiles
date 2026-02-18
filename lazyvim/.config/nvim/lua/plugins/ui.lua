return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "auto",
        section_separators = { left = "", right = "" },
        component_separators = { "", "" },
      },
      sections = {
        lualine_a = {
          {
            "mode",
            fmt = function(str)
              return " " .. str
            end,
            separator = { left = "", right = "" },
            right_padding = 2,
          },
        },
        lualine_b = {
          {
            "branch",
            fmt = function(str)
              if str:len() > 30 then
                return str:sub(1, 30) .. ".."
              else
                return str
              end
            end,
          },
        },
        lualine_z = {
          {
            function()
              return " " .. os.date("%R")
            end,
            separator = { left = "", right = "" },
            left_padding = 2,
          },
        },
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        always_show_bufferline = true,
      },
    },
  },
  {
    "snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
          header = [[
        ██╗      █████╗ ███╗   ██╗ ██████╗███████╗██╗    ██╗██╗     
        ██║     ██╔══██╗████╗  ██║██╔════╝██╔════╝██║    ██║██║     
        ██║     ███████║██╔██╗ ██║██║     █████╗  ██║ █╗ ██║██║     
        ██║     ██╔══██║██║╚██╗██║██║     ██╔══╝  ██║███╗██║██║     
        ███████╗██║  ██║██║ ╚████║╚██████╗███████╗╚███╔███╔╝███████╗
        ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝╚══════╝ ╚══╝╚══╝ ╚══════╝
 ]],
        },
      },
    },
  },
}

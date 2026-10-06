return {
  {
    "coder/claudecode.nvim",
    opts = {
      terminal = {
        snacks_win_opts = {
          keys = {
            nav_h = {
              "<C-h>",
              function()
                vim.cmd("stopinsert")
                require("util.navigate").go("h")
              end,
              mode = "t",
              desc = "Navigate left",
            },
            nav_j = {
              "<C-j>",
              function()
                vim.cmd("stopinsert")
                require("util.navigate").go("j")
              end,
              mode = "t",
              desc = "Navigate down",
            },
            nav_k = {
              "<C-k>",
              function()
                vim.cmd("stopinsert")
                require("util.navigate").go("k")
              end,
              mode = "t",
              desc = "Navigate up",
            },
            nav_l = {
              "<C-l>",
              function()
                vim.cmd("stopinsert")
                require("util.navigate").go("l")
              end,
              mode = "t",
              desc = "Navigate right",
            },
          },
        },
      },
    },
  },
}

return {
  {
    "olimorris/codecompanion.nvim",
    version = "^18.0.0",
    lazy = false,
    config = function()
      require("codecompanion").setup()
      vim.cmd([[cab cc CodeCompanion]])
    end,
    keys = {
      { "<leader>a", "", desc = "+AI", mode = { "n", "x" } },
      {
        "<leader>ac",
        "<cmd>CodeCompanionChat Toggle<cr>",
        mode = { "n", "x" },
        desc = "Chat (CodeCompanion)",
      },
      {
        "<leader>aa",
        "<cmd>CodeCompanionActions<cr>",
        mode = { "n", "x" },
        desc = "Actions (CodeCompanion)",
      },
    },
    opts = {},
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
}

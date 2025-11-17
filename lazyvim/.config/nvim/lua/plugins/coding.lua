return {
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        list = {
          selection = {
            preselect = false,
          },
        },
      },
    },
  },
  {
    "linux-cultist/venv-selector.nvim",
    enabled = true,
  },
  {
    "ThePrimeagen/refactoring.nvim",
    keys = {
      { "<leader>r", "", desc = "+refactor", mode = { "n", "x" } },
      {
        "<leader>rs",
        pick,
        mode = { "n", "x" },
        desc = "Refactor",
      },
      {
        "<leader>ri",
        function()
          return require("refactoring").refactor("Inline Variable")
        end,
        mode = { "n", "x" },
        desc = "Inline Variable",
        expr = true,
      },
      {
        "<leader>rb",
        function()
          return require("refactoring").refactor("Extract Block")
        end,
        mode = { "n", "x" },
        desc = "Extract Block",
        expr = true,
      },
      {
        "<leader>rf",
        function()
          return require("refactoring").refactor("Extract Block To File")
        end,
        mode = { "n", "x" },
        desc = "Extract Block To File",
        expr = true,
      },
      {
        "<leader>rP",
        function()
          require("refactoring").debug.printf({ below = false })
        end,
        desc = "Debug Print",
      },
      {
        "<leader>rp",
        function()
          require("refactoring").debug.print_var({ normal = true })
        end,
        mode = { "n", "x" },
        desc = "Debug Print Variable",
      },
      {
        "<leader>rc",
        function()
          require("refactoring").debug.cleanup({})
        end,
        desc = "Debug Cleanup",
      },
      {
        "<leader>rf",
        function()
          return require("refactoring").refactor("Extract Function")
        end,
        mode = { "n", "x" },
        desc = "Extract Function",
        expr = true,
      },
      {
        "<leader>rF",
        function()
          return require("refactoring").refactor("Extract Function To File")
        end,
        mode = { "n", "x" },
        desc = "Extract Function To File",
        expr = true,
      },
      {
        "<leader>rx",
        function()
          return require("refactoring").refactor("Extract Variable")
        end,
        mode = { "n", "x" },
        desc = "Extract Variable",
        expr = true,
      },
      {
        "<leader>rp",
        function()
          require("refactoring").debug.print_var()
        end,
        mode = { "n", "x" },
        desc = "Debug Print Variable",
      },
    },
  },
}

return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters.sqlfluff = {
        args = { "format", "--dialect=trino", "-" },
        exit_codes = { 0, 1 },
      }
      opts.default_format_opts = {
        timeout_ms = 5000,
      }
      -- opts.log_level = vim.log.levels.DEBUG
    end,
  },
}

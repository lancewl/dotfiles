local function diagnostic_goto(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            { "K", false },
            { "gh", vim.lsp.buf.hover, desc = "Hover" },
            { "<leader>cR", "<cmd>lsp restart<cr>", desc = "Lsp Restart" },
            { "gj", diagnostic_goto(true), desc = "Next Diagnostic" },
            { "gk", diagnostic_goto(false), desc = "Prev Diagnostic" },
          },
        },
        gopls = {
          settings = {
            gopls = {
              buildFlags = { "-tags=all_test" },
            },
          },
        },
      },
    },
  },
  {
    "linux-cultist/venv-selector.nvim",
    opts = {
      options = {
        log_level = "TRACE",
      },
    },
  },
}

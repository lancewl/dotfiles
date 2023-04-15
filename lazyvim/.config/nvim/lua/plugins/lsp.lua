return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- disable a keymap
      keys[#keys + 1] = { "K", false }
      keys[#keys + 1] = { "gh", vim.lsp.buf.hover, desc = "Hover" }
    end,
    opts = {
      autoformat = false,
      servers = {
        pyright = {},
      },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          nls.builtins.diagnostics.pylint,
          nls.builtins.formatting.black,
        },
        default_timeout = 15000,
        debounce = 1000,
        update_in_insert = false,
        debug = false,
      }
    end,
  },
}

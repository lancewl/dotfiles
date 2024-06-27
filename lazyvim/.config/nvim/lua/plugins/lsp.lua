return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local function diagnostic_goto(next, severity)
        local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
        severity = severity and vim.diagnostic.severity[severity] or nil
        return function()
          go({ severity = severity })
        end
      end
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- disable a keymap
      keys[#keys + 1] = { "K", false }
      keys[#keys + 1] = { "gh", vim.lsp.buf.hover, desc = "Hover" }
      keys[#keys + 1] = { "<leader>cR", "<cmd>LspRestart<cr>", desc = "Lsp Restart" }
      keys[#keys + 1] = { "gj", diagnostic_goto(true), desc = "Next Diagnostic" }
      keys[#keys + 1] = { "gk", diagnostic_goto(false), desc = "Prev Diagnostic" }
    end,
    opts = {
      servers = {
        pyright = {
          mason = false,
        },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        python = { "pylint" },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = function()
      local opts = {
        format = {
          timeout_ms = 3000,
        },
        formatters_by_ft = {
          python = { "black" },
        },
      }
      return opts
    end,
  },
  --[[
  {
    "nvimtools/none-ls.nvim",
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
  ]]
  --
}

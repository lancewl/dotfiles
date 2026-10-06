return {
  {
    "alexghergh/nvim-tmux-navigation",
    lazy = false,
    keys = {
      {
        "<C-h>",
        "<Cmd>NvimTmuxNavigateLeft<cr>",
        desc = "Navigate left",
      },
      {
        "<C-j>",
        "<Cmd>NvimTmuxNavigateDown<cr>",
        desc = "Navigate down",
      },
      {
        "<C-k>",
        "<Cmd>NvimTmuxNavigateUp<cr>",
        desc = "Navigate up",
      },
      {
        "<C-l>",
        "<Cmd>NvimTmuxNavigateRight<cr>",
        desc = "Navigate right",
      },
    },
    config = true,
  },
  {
    "Pocco81/auto-save.nvim",
    opts = {
      debounce_delay = 100,
      condition = function(buf)
        local fn = vim.fn
        -- skip autosave if this is a special/floating buftype (covers Harpoon's menu)
        if fn.getbufvar(buf, "&buftype") ~= "" then
          return false
        end
        return true
      end,
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      replace = {
        -- override the label used to display some keys. It doesn't effect WK in any other way.
        ["<space>"] = "SPC",
        ["<cr>"] = "RET",
        ["<tab>"] = "TAB",
      },
      win = {
        border = "single", -- none, single, double, shadow
        padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
      },
      layout = {
        spacing = 8, -- spacing between columns
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
    },
  },
  {
    "ibhagwan/fzf-lua",
    opts = { hls = { header_text = "FzfLuaHeaderBind" } },
  },
}

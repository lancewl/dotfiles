return {
  {
    "christoomey/vim-tmux-navigator",
  },
  {
    "Pocco81/auto-save.nvim",
    opts = {
      debounce_delay = 100,
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      key_labels = {
        -- override the label used to display some keys. It doesn't effect WK in any other way.
        ["<space>"] = "SPC",
        ["<cr>"] = "RET",
        ["<tab>"] = "TAB",
      },
      window = {
        border = "single", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
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
        }
      }
    }
  }
}

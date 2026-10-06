return {
  {
    "alexghergh/nvim-tmux-navigation",
    lazy = false,
    keys = {
      {
        "<C-h>",
        function()
          require("util.navigate").go("h")
        end,
        desc = "Navigate left",
      },
      {
        "<C-j>",
        function()
          require("util.navigate").go("j")
        end,
        desc = "Navigate down",
      },
      {
        "<C-k>",
        function()
          require("util.navigate").go("k")
        end,
        desc = "Navigate up",
      },
      {
        "<C-l>",
        function()
          require("util.navigate").go("l")
        end,
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
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory", "DiffviewToggleFiles" },
    keys = {
      { "<leader>gvo", "<Cmd>DiffviewOpen<cr>", desc = "Diffview Open" },
      { "<leader>gvc", "<Cmd>DiffviewClose<cr>", desc = "Diffview Close" },
      { "<leader>gvh", "<Cmd>DiffviewFileHistory %<cr>", desc = "Diffview File History" },
      { "<leader>gvH", "<Cmd>DiffviewFileHistory<cr>", desc = "Diffview Repo History" },
      { "<leader>gvh", ":DiffviewFileHistory<cr>", mode = "v", desc = "Diffview Selection History" },
      { "<leader>gvm", "<Cmd>DiffviewOpen origin/main...HEAD<cr>", desc = "Diffview vs origin/main" },
      { "<leader>gvt", "<Cmd>DiffviewToggleFiles<cr>", desc = "Diffview Toggle Files" },
    },
    opts = {},
  },
  { "folke/which-key.nvim", opts = { spec = { { "<leader>gv", group = "diffview" } } } },
  {
    "ibhagwan/fzf-lua",
    opts = { hls = { header_text = "FzfLuaHeaderBind" } },
  },
}

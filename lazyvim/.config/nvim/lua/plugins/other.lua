return {
  {
    "ianding1/leetcode.vim",
    lazy = true,
    config = function()
      vim.g.leetcode_browser = "chrome"
      vim.g.leetcode_solution_filetype = "python3"
    end,
    keys = {
      { "<leader>Ll", "<cmd>LeetCodeList<cr>", desc = "LeetCodeList" },
      { "<leader>Lt", "<cmd>LeetCodeTest<cr>", desc = "LeetCodeTest" },
      { "<leader>Ls", "<cmd>LeetCodeSubmint<cr>", desc = "LeetCodeSubmint" },
      { "<leader>Li", "<cmd>LeetCodeSignIn<cr>", desc = "LeetCodeSignIn" },
    },
  },
}

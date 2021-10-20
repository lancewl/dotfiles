local wk = require("which-key")

wk.setup{
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
}

wk.register({
  ["<leader>"] = {
    e = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
    f = { "<cmd>Files<cr>", "FZF" },
    r = { "<cmd>Files<cr>", "Rg" },
    s = { "<cmd>Startify<cr>", "Startify" },
    i = { "<cmd>source $MYVIMRC<cr>", "init.vim" },
    z = { "<cmd>Goyo<cr>", "Zen" },
    c = { "<cmd>bd<cr>", "Close buffer" },
    ["<space>"] = { "<cmd>nohlsearch<cr>", "noh" },
  },
})

wk.register({
  ["<leader>w"] = {
    name = "+Window",
    j = { "<C-W>s", "Split below" },
    l = { "<C-W>v", "Split right" },
  },
})

wk.register({
  ["<leader>g"] = {
    name = "+Git",
    g = { "<cmd>FloatermNew lazygit<cr>", "lazygit" },
    d = { "<cmd>Git diff<cr>", "Git Diff" },
    D = { "<cmd>Gvdiffsplit<cr>", "Git Diff in split" },
    l = { "<cmd>Git log<cr>", "Git Log" },
    b = { "<cmd>Git blame<cr>", "Git Blame" },
    B = { "<cmd>GBrowse<cr>", "Browse in hub" },
  },
})

wk.register({
  ["<leader>t"] = {
    name = "+Terminal",
    [";"] = { "<cmd>FloatermNew --wintype=split --height=6<cr>", "Terminal" },
    n = { "<cmd>FloatermNew node<cr>", "Node" },
    p = { "<cmd>FloatermNew python<cr>", "Python" },
    t = { "<cmd>FloatermToggle<cr>", "Toggle" },
  },
})

wk.register({
  ["<leader>d"] = {
    name = "+Debug",
    d = { "<cmd>call vimspector#Launch()<cr>", "Launch" },
    e = { "<cmd>call vimspector#Reset()<cr>", "Close" },
    r = { "<cmd>call vimspector#Restart()<cr>", "Restart" },
    j = { "<cmd>call vimspector#StepOver()<cr>", "Step Over" },
    h = { "<cmd>call vimspector#StepOut()<cr>", "Step Out" },
    l = { "<cmd>call vimspector#StepInto()<cr>", "Step Into" },
    ["<space>"] = { "<cmd>call vimspector#Continue()<cr>", "Continue" },
    ["b"] = { "<cmd>call vimspector#ToggleBreakpoint()<cr>", "Break Point" },
    ["cb"] = { "<cmd><Plug>VimspectorToggleConditionalBreakpoint<cr>", "Condition BP" },
  },
})
local wk = require("which-key")

wk.setup{
  key_labels = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    ["<space>"] = "SPC",
    ["<cr>"] = "RET",
    ["<tab>"] = "TAB",
  },
  layout = {
    spacing = 10, -- spacing between columns
  },
}

wk.register({
  ["<leader>"] = {
    e = { "<cmd>NvimTreeToggle<cr>", "File Explorer" },
    f = { "<cmd>Files<cr>", "Fuzzy Finder" },
    r = { "<cmd>Files<cr>", "Rg" },
    s = { "<cmd>Startify<cr>", "Start Screen" },
    i = { "<cmd>source $MYVIMRC<cr>", "Source init.vim" },
    z = { "<cmd>Goyo<cr>", "Zen Mode" },
    c = { "<cmd>bd<cr>", "Close Buffer" },
    ["<space>"] = { "<cmd>nohlsearch<cr>", "No Highlight" },
  },
})

wk.register({
  ["<leader>w"] = {
    name = "+window",
    j = { "<C-W>s", "Split below" },
    l = { "<C-W>v", "Split right" },
  },
})

wk.register({
  ["<leader>g"] = {
    name = "+git",
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
    name = "+terminal",
    [";"] = { "<cmd>FloatermNew --wintype=split --height=6<cr>", "Terminal" },
    n = { "<cmd>FloatermNew node<cr>", "Node" },
    p = { "<cmd>FloatermNew python<cr>", "Python" },
    t = { "<cmd>FloatermToggle<cr>", "Toggle" },
  },
})

wk.register({
  ["<leader>d"] = {
    name = "+debugger",
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

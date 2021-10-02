let g:nvim_tree_quit_on_open = 1

lua <<EOF
    require'nvim-tree'.setup()
    local tree_cb = require'nvim-tree.config'.nvim_tree_callback

    vim.g.nvim_tree_bindings = {
      { key = "l",      cb = tree_cb("edit") },
      { key = "h",      cb = tree_cb("close_node") },
    }

EOF

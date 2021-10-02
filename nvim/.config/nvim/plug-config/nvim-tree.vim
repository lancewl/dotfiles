let g:nvim_tree_quit_on_open = 1

lua <<EOF
local tree_cb = require'nvim-tree.config'.nvim_tree_callback

require'nvim-tree'.setup{
    view = {
        mappings = {
            list = {
                { key = "l",      cb = tree_cb("edit") },
                { key = "h",      cb = tree_cb("close_node") },
            }
        }
    }
}
EOF

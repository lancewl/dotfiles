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
    },
    actions = {
        open_file = {
            quit_on_open = true,
        }
    },
    git = {
        ignore = false,
    },
}
EOF

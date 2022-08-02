lua << EOF
local autosave = require("auto-save")

autosave.setup(
    {
        enabled = true,
        execution_message = {
            message = function() -- message to print on save
                return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
            end,
            dim = 0.18, -- dim the color of `message`
            cleaning_interval = 100, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
        },
        trigger_events = {"InsertLeave", "TextChanged"},
        write_all_buffers = false,
        debounce_delay = 100
    }
)
EOF

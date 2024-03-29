local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
    "                                                               ",
    "  ██╗      █████╗ ███╗   ██╗ ██████╗███████╗██╗    ██╗██╗      ",
    "  ██║     ██╔══██╗████╗  ██║██╔════╝██╔════╝██║    ██║██║      ",
    "  ██║     ███████║██╔██╗ ██║██║     █████╗  ██║ █╗ ██║██║      ",
    "  ██║     ██╔══██║██║╚██╗██║██║     ██╔══╝  ██║███╗██║██║      ",
    "  ███████╗██║  ██║██║ ╚████║╚██████╗███████╗╚███╔███╔╝███████╗ ",
    "  ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝╚══════╝ ╚══╝╚══╝ ╚══════╝ ",
    "                                                               ",
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "  > Find file", ":Telescope find_files<CR>"),
    dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
}

local function footer()
    -- Quote
    local fortune = require "alpha.fortune"
    local quote = table.concat(fortune(), "\n")
    return quote
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Constant"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Function"
dashboard.section.buttons.opts.hl_shortcut = "Type"
dashboard.opts.opts.noautocmd = true

alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])

-- Work with indentLine
vim.cmd([[
    let g:indentLine_fileTypeExclude = ['alpha']
]])

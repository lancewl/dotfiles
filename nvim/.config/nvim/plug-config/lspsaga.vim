lua << EOF
local saga = require 'lspsaga'

saga.init_lsp_saga()
EOF

nnoremap <silent> gf <cmd>Lspsaga lsp_finder<CR>
nnoremap <silent> gp <cmd>Lspsaga preview_definition<CR>
nnoremap <silent> gR <cmd>Lspsaga rename<CR>
nnoremap <silent> gs <cmd>Lspsaga signature_help<CR>
nnoremap <silent> gh <cmd>Lspsaga hover_doc<CR>
nnoremap <silent> ga <cmd>Lspsaga code_action<CR>
nnoremap <silent> go <cmd>Lspsaga show_line_diagnostics<CR>
nnoremap <silent> gj <cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> gk <cmd>Lspsaga diagnostic_jump_prev<CR>

nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

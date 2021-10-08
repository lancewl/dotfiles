lua << EOF
local saga = require 'lspsaga'

saga.init_lsp_saga()
EOF

nnoremap <silent> gf :Lspsaga lsp_finder<CR>
nnoremap <silent> gp :Lspsaga preview_definition<CR>
nnoremap <silent> gR :Lspsaga rename<CR>
nnoremap <silent> gs :Lspsaga signature_help<CR>

nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

highlight link DiagnosticError GruvboxRed

nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>

" References to the same variable
highlight LspReference guifg=NONE guibg=#434C5E guisp=NONE gui=NONE cterm=NONE ctermfg=NONE ctermbg=59
highlight! link LspReferenceText LspReference
highlight! link LspReferenceRead LspReference
highlight! link LspReferenceWrite LspReference

" auto-format
" autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)


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

highlight link TargetWord Function
highlight link ReferencesCount Function
highlight link ReferencesIcon Todo
highlight link DefinitionCount Function
highlight link DefinitionsIcon Todo
highlight link SagaBorder Function
highlight link SagaWinbarSep Function
highlight link FinderVirtText Function

lua << EOF
local nvim_lsp = require('lspconfig')

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        severity_sort = true, -- Sort the signs in gutter by the severity --
        update_in_insert = false
    }
)

-- Setup null-ls for linters
require("null-ls").setup({
    sources = {
        require("null-ls").builtins.diagnostics.pylint,
        require("null-ls").builtins.formatting.black,
    },
    default_timeout = 15000,
    debounce = 1000,
    update_in_insert = false,
    debug = false,
    -- on_attach = function(client)
    --     if client.resolved_capabilities.document_formatting then
    --         vim.cmd([[
    --         augroup LspFormatting
    --            autocmd! * <buffer>
    --             autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
    --         augroup END
    --         ]])
    --     end
    -- end,
})

local function on_attach(client, bufnr)
    -- Find the clients capabilities
    local cap = client.server_capabilities

    -- Only highlight if compatible with the language
    if cap.document_highlight then
        vim.cmd('augroup LspHighlight')
        vim.cmd('autocmd!')
        vim.cmd('autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()')
        vim.cmd('autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()')
        vim.cmd('augroup END')
    end
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local servers = { 'pyright' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    flags = {
      debounce_text_changes = 1000,
    },
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Load Lspsaga --
local saga = require 'lspsaga'

saga.setup {
  -- diagnostic sign
  diagnostic_header = { "▊", "▊", "▊", "▊" },
}

-- Load fidget for nvim-lsp progress --
require"fidget".setup{}
EOF

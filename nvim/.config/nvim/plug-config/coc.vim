inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nnoremap <leader>d :<C-u>CocList diagnostics<cr>
nnoremap <leader>s :<C-u>CocList -I symbols<cr>
nmap <leader>a <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)

let g:coc_global_extensions = []
let g:coc_global_extensions += ['coc-clangd']
let g:coc_global_extensions += ['coc-json']
let g:coc_global_extensions = ['coc-html']
let g:coc_global_extensions += ['coc-css']
let g:coc_global_extensions += ['coc-tsserver']
let g:coc_global_extensions += ['coc-python']

if executable('prettier')
    let g:coc_global_extensions += ['coc-prettier']
    command! -nargs=0 Prettier :CocCommand prettier.formatFile
endif

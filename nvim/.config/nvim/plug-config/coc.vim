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

let g:coc_global_extensions = [
      \'coc-explorer',
      \'coc-git',
      \'coc-pyright',
      \'coc-html',
      \'coc-css',
      \'coc-json',
      \'coc-tsserver' 
      \]

if executable('prettier')
    let g:coc_global_extensions += ['coc-prettier']
    command! -nargs=0 Prettier :CocCommand prettier.formatFile
endif

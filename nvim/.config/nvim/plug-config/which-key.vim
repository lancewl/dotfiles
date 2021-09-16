" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" Single mappings
" let g:which_key_map[' '] = [ ':noh'                       , 'clear highlight' ]
let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'  , 'comment' ]
let g:which_key_map['e'] = [ ':NvimTreeToggle'            , 'explorer' ]
let g:which_key_map['f'] = [ ':Files'                     , 'fzf' ]
let g:which_key_map['i'] = [ ':source $MYVIMRC'           , 'source init.vim']
let g:which_key_map['S'] = [ ':Startify'                  , 'start screen' ]
let g:which_key_map['T'] = [ ':Rg'                        , 'search text' ]
let g:which_key_map['z'] = [ ':Goyo'                       , 'zen' ]
let g:which_key_map['c'] = { 'name': 'which_key_ignore' }

" g for Git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'g' : [':FloatermNew lazygit'       , 'lazygit'],
      \ 's' : [':Git'                       , 'git status'],
      \ 'd' : [':Git diff'                  , 'diff'],
      \ 'D' : [':Gvdiffsplit'               , 'diff in split'],
      \ 'l' : [':Git log'                   , 'log'],
      \ 'b' : [':Git blame'                 , 'blame'],
      \ 'B' : [':GBrowse'                   , 'browse in hub'],
      \ 'v' : [':GV'                        ,'commit browser'],
      \ }

" w for window
let g:which_key_map.w = {
      \ 'name' : '+window' ,
      \ 'j' : ['<C-W>s'                     , 'split below'],
      \ 'l' : ['<C-W>v'                     , 'split right'],
      \ }

" t for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=split --height=6'        , 'terminal'],
      \ 'n' : [':FloatermNew node'                              , 'node'],
      \ 'p' : [':FloatermNew python'                            , 'python'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ }

" b for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ 'd' : ['bd'        , 'delete-buffer']   ,
      \ 'f' : ['bfirst'    , 'first-buffer']    ,
      \ 'h' : ['Startify'  , 'home-buffer']     ,
      \ 'l' : ['blast'     , 'last-buffer']     ,
      \ 'n' : ['bnext'     , 'next-buffer']     ,
      \ 'p' : ['bprevious' , 'previous-buffer'] ,
      \ '?' : ['Buffers'   , 'fzf-buffer']      ,
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")

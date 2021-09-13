" set leader key
let g:mapleader = "\<Space>"

syntax on
filetype plugin on

set expandtab
set tabstop=2
set shiftwidth=2
set backspace=indent,eol,start
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set encoding=utf-8
set fileformat=unix
set clipboard=unnamed
set mouse+=a
set relativenumber
set noerrorbells
" Provides tab-completion for all file related tasks
" - Hit tab to find:
set path+=**
set wildmenu
set incsearch
set hlsearch

set background=dark

" For coc.nvim
set hidden
set updatetime=300
set shortmess+=c
set signcolumn=yes
" set colorcolumn=80

" Disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" User-defined commands must start with a capital letter
command! RefreshConfig source $MYVIMRC

" auto source when writing to init.vm alternatively you can run :source $MYVIMRC
au! BufWritePost $MYVIMRC source % 

" You can't stop me
cmap w!! w !sudo tee %

" set leader key
let g:mapleader = "\<Space>"

syntax on                       " Enables syntax highlighing
set hidden                      " Hide unsaved buffers instead of close them
set nonumber                      " Line number
set relativenumber              " Reletive line number
set incsearch                   " Searching when you're typing
set hlsearch                    " Highlight search pattern
set background=dark             " Background style
set splitbelow                  " Horizontal splits will automatically be below
set splitright                  " Vertical splits will automatically be to the right
set noshowmode                  " Don't show mode line
set noshowcmd                   " Don't show command after execute
set nowrap                      " Display long lines as a single line
set expandtab                   " Converts tabs to spaces
set tabstop=4                   " Insert number of spaces for a tab
set shiftwidth=4                " Change the number of space characters inserted for indentation 
set autoindent                  " Good auto indent
set smartindent                 " Make indent smart
set backspace=indent,eol,start  " Make the backspace work as usual
set ignorecase                  " Ignore case for searching
set smartcase                   " Only ignore case if pattern contains an uppercase 
set wildmenu                    " Enable tab completion in command line
set mouse+=a                    " Enable your mouse
set clipboard=unnamed           " Synchronized unnamed register with the system register
set noerrorbells                " Disable error bell sound
set timeoutlen=500              " Waiting for each keystroke of the mappings
set encoding=utf-8              " UTF-8 encoding
set fileformat=unix             " File EOL setting
set noswapfile                  " No swap file"
set undofile                    " Setup persistent undo history
set undodir=$HOME/.config/nvim/undodir  " Directory for undo history
set spelllang=en,cjk            " Setup spell checking languages, CJK is used to exclude east asian char
set spellsuggest=best,9         " Show nine spell checking candidates at most

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

" Get syntax highlighting for Jenkinsfile
au BufEnter Jenkinsfile setf groovy
au BufEnter Jenkinsfile syntax sync fromstart

let g:python3_host_prog = $PYENV_ROOT . '/shims/python3'

" let g:indentLine_setConceal = 0

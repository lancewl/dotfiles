let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italic=1
let g:gruvbox_italicize_strings=1
colorscheme gruvbox
highlight clear SignColumn

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

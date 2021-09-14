autocmd! FileType fzf
autocmd  FileType fzf set laststatus=1 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

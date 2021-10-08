lua << EOF
require('lint').linters_by_ft = {
  python = {'pylint'}
}
EOF

autocmd BufEnter * lua require('lint').try_lint()
autocmd BufWritePost * lua require('lint').try_lint()

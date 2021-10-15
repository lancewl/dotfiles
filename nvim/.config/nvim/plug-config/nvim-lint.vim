lua << EOF
require('lint').linters_by_ft = {
  python = {'pylint'}
}
EOF

autocmd BufWritePost * lua require('lint').try_lint()

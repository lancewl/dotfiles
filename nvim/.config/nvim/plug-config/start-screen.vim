let g:startify_session_dir = '~/.config/nvim/sessiondir'
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_session_persistence = 1

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Recent Files']            },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'v': '~/dotfiles/nvim/.config/nvim/init.vim' },
            \ ]

let g:startify_custom_header = [
            \ ' __       ________   ___   __    ______   ______   __ __ __   __          ', 
            \ '/_/\     /_______/\ /__/\ /__/\ /_____/\ /_____/\ /_//_//_/\ /_/\         ',
            \ '\:\ \    \::: _  \ \\::\_\\  \ \\:::__\/ \::::_\/_\:\\:\\:\ \\:\ \        ',
            \ ' \:\ \    \::(_)  \ \\:. `-\  \ \\:\ \  __\:\/___/\\:\\:\\:\ \\:\ \       ',
            \ '  \:\ \____\:: __  \ \\:. _    \ \\:\ \/_/\\::___\/_\:\\:\\:\ \\:\ \____  ',
            \ '   \:\/___/\\:.\ \  \ \\. \`-\  \ \\:\_\ \ \\:\____/\\:\\:\\:\ \\:\/___/\ ', 
            \ '    \_____\/ \__\/\__\/ \__\/ \__\/ \_____\/ \_____\/ \_______\/ \_____\/ ', 
            \ ]

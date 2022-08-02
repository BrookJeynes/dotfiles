let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']          },
          \ { 'type': 'dir',       'header': ['   Current Directory'.getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ ]

let g:startify_custom_header = [
        \ '   ________                __        _          ______           __                     _   __      _         ',
        \ '  / ____/ /_  ____  ____  / /____  _( )_____   / ____/_  _______/ /_____  ____ ___     / | / /   __(_)___ ___ ',
        \ ' / /   / __ \/ __ \/ __ \/ //_/ / / /// ___/  / /   / / / / ___/ __/ __ \/ __ `__ \   /  |/ / | / / / __ `__ \',
        \ '/ /___/ / / / /_/ / /_/ / ,< / /_/ / (__  )  / /___/ /_/ (__  ) /_/ /_/ / / / / / /  / /|  /| |/ / / / / / / /',
        \ '\____/_/ /_/\____/\____/_/|_|\__, / /____/   \____/\__,_/____/\__/\____/_/ /_/ /_/  /_/ |_/ |___/_/_/ /_/ /_/ ',
        \ '                            /____/                                                                            ',
        \]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0


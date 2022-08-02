call plug#begin('~/.config/nvim/autoload/plugged')


" COLOUR THEME
" ---------------------------------------
Plug 'arcticicestudio/nord-vim'

" GitHub Copilot
"---------------------------------------
Plug 'github/copilot.vim'                             " Github Copilot - Code auto-complete/auto-generation

" Utility
"---------------------------------------
Plug 'jiangmiao/auto-pairs'                           " Auto Closes ( [ {
Plug 'tpope/vim-surround'                             " Add/Replace/Remove surround tags
Plug 'tpope/vim-commentary'                           " Comment/Uncomment lines

" SYNTAX HIGHLIGHTING
Plug 'yuezk/vim-js'                                   " Syntax Highlighting for JS

" SYNTAX FORMATTING
" ---------------------------------------
Plug 'neoclide/coc.nvim', {'branch': 'release'}       " COC Auto Complete
let g:coc_global_extensions = ['coc-eslint', 'coc-pyright', 'coc-jedi', 'coc-snippets', 'coc-vimlsp', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-java'] " CoC code extensions
Plug 'sheerun/vim-polyglot'                           " Generalised Syntax Support
Plug 'HerringtonDarkholme/yats.vim'                   " Typescipt Syntax Support

" Git Integration
" _______________________________________
Plug 'tpope/vim-fugitive'                             " Used to interact with git
Plug 'tpope/vim-rhubarb'                              " Used to interact with git
Plug 'junegunn/gv.vim'                                " Git commit browser 

" NAVIGATION
" ---------------------------------------
Plug 'vim-airline/vim-airline'                        " Status Line
Plug 'vim-airline/vim-airline-themes'                 " Status Line Themes
Plug 'kevinhwang91/rnvimr'                            " Ranger | File/Folder Navigation
Plug 'mhinz/vim-startify'                             " Boot-up Screen for vim

call plug#end()

" Coc Python3 Direct
let g:python3_host_prog='/usr/bin/python3'

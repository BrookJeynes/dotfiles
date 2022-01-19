call plug#begin('~/.config/nvim/autoload/plugged')


" COLOUR THEME
" ---------------------------------------
Plug 'sainnhe/edge'


" SYNTAX HIGHLIGHTING
" ---------------------------------------
Plug 'maxmellon/vim-jsx-pretty'                       " Syntax Highlighting for React
Plug 'yuezk/vim-js'                                   " Syntax Highlighting for JS


" SYNTAX FORMATTING
" ---------------------------------------
Plug 'neoclide/coc.nvim', {'branch': 'release'}       " COC Auto Complete
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-pyright', 'coc-jedi', 'coc-snippets', 'coc-vimlsp', 'coc-angular', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-java']  " CoC code extensions
Plug 'jiangmiao/auto-pairs'                           " Auto Closes ( [ {
Plug 'sheerun/vim-polyglot'                           " Generalised Syntax Support
Plug 'HerringtonDarkholme/yats.vim'                   " Typescipt Syntax Support


" Git Integration
" _______________________________________
Plug 'mhinz/vim-signify'                              " Add Git integrated signs/symbols
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

"""
" Name: eink.vim
"""

set background=light
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='eink'
set t_Co=256


" misc

hi ColorColumn      guisp=NONE guifg=#474747 guibg=#d1d1d1 ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi Conceal          guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi Cursor           guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi lCursor          guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi CursorIM         guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi CursorColumn     guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi CursorLine       guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi Directory        guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi DiffAdd          guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi DiffChange       guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi DiffDelete       guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi DiffText         guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi EndOfBuffer      guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi ErrorMsg         guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=bold cterm=bold
hi VertSplit        guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi Folded           guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi FoldColumn       guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi SignColumn       guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi IncSearch        guisp=NONE guifg=#cccccc guibg=#474747 ctermfg=252 ctermbg=238 gui=NONE cterm=NONE
hi LineNr           guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi LineNrAbove      guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi LineNrBelow      guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi CursorLineNr     guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi MatchParen       guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi ModeMsg          guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi MoreMsg          guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi NonText          guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi Pmenu            guisp=NONE guifg=#474747 guibg=#d1d1d1 ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi PmenuSel         guisp=NONE guifg=#cccccc guibg=#333333 ctermfg=252 ctermbg=236 gui=NONE cterm=NONE
hi PmenuSbar        guisp=NONE guifg=#cccccc guibg=#474747 ctermfg=252 ctermbg=238 gui=NONE cterm=NONE
hi PmenuThumb       guisp=NONE guifg=#cccccc guibg=#333333 ctermfg=252 ctermbg=236 gui=NONE cterm=NONE
hi Question         guisp=NONE guifg=#474747 guibg=#d1d1d1 ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi QuickFixLine     guisp=NONE guifg=#474747 guibg=#d1d1d1 ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi Search           guisp=NONE guifg=#cccccc guibg=#474747 ctermfg=252 ctermbg=238 gui=bold cterm=bold
hi SpecialKey       guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi SpellBad         guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi SpellCap         guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi SpellLocal       guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi SpellRare        guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi StatusLine       guisp=NONE guifg=#cccccc guibg=#474747 ctermfg=252 ctermbg=238 gui=NONE cterm=NONE
hi StatusLineNC     guisp=NONE guifg=#cccccc guibg=#474747 ctermfg=252 ctermbg=238 gui=NONE cterm=NONE
hi StatusLineTerm   guisp=NONE guifg=#cccccc guibg=#474747 ctermfg=252 ctermbg=238 gui=NONE cterm=NONE
hi StatusLineTermNC guisp=NONE guifg=#cccccc guibg=#474747 ctermfg=252 ctermbg=238 gui=NONE cterm=NONE
hi TabLine          guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi TabLineFill      guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi TabLineSel       guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi Terminal         guisp=NONE guifg=#474747 guibg=#d1d1d1 ctermfg=238 ctermbg=252 gui=NONE cterm=NONE
hi Title            guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi Visual           guisp=NONE guifg=#cccccc guibg=#474747 ctermfg=252 ctermbg=238 gui=NONE cterm=NONE
hi VisualNOS        guisp=NONE guifg=#cccccc guibg=#474747 ctermfg=252 ctermbg=238 gui=NONE cterm=NONE
hi WarningMsg       guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi WildMenu         guisp=NONE guifg=#474747 guibg=#d1d1d1 ctermfg=238 ctermbg=252 gui=NONE cterm=NONE

" major

hi Normal     guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE      cterm=NONE
hi Comment    guisp=NONE guifg=#6b6b6b guibg=#cccccc ctermfg=242 ctermbg=252 gui=italic    cterm=italic
hi Constant   guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE      cterm=NONE
hi Identifier guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE      cterm=NONE
hi Statement  guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=bold      cterm=bold
hi PreProc    guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE      cterm=NONE
hi Type       guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE      cterm=NONE
hi Special    guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE      cterm=NONE
hi Underlined guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=underline cterm=underline
hi Ignore     guisp=NONE guifg=#474747 guibg=#cccccc ctermfg=238 ctermbg=252 gui=NONE      cterm=NONE
hi Error      guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE      cterm=NONE
hi Todo       guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE      cterm=NONE

" minor

hi String         guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi Character      guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi Number         guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi Boolean        guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi Float          guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi Function       guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi Conditional    guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=bold cterm=bold
hi Repeat         guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=bold cterm=bold
hi Label          guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi Operator       guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi Keyword        guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=bold cterm=bold
hi Exception      guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi Include        guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi Define         guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi Macro          guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi PreCondit      guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi StorageClass   guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi Structure      guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi Typedef        guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi SpecialChar    guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi Tag            guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi Delimiter      guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi SpecialComment guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE
hi Debug          guisp=NONE guifg=#333333 guibg=#cccccc ctermfg=236 ctermbg=252 gui=NONE cterm=NONE

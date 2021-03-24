if exists('syntax_on')
    syntax reset
endif

set background=dark
let g:colors_name = 'arcolors'

" Color Palette
let s:orange = '#af5f00'

let s:white = '#ffffff'

let s:red = '#b15e7c'
let s:red2 = '#331111'

let s:green = '#709d6c'
let s:green2 = '#113311'

let s:yellow = '#b5a262'
let s:yellow2 = '#333311'

let s:blue      = '#608cc3'

let s:gray1     = '#1b202a'
let s:gray2     = '#232936'
let s:gray3     = '#323c4d'
let s:gray4     = '#51617d'
let s:gray5     = '#9aa7bd'

let s:cyan1 = '#006b83'
let s:cyan2 = '#007a7d'
let s:cyan3 = '#00a39b'
let s:cyan4 = '#0078ab'
let s:cyan5 = '#007ad7'
let s:cyan6 = '#00aeb9'

function! s:HL(group, fg, bg, attr)
    let l:attr = a:attr

    if !empty(a:fg)
        exec 'hi ' . a:group . ' guifg=' . a:fg
    endif
    if !empty(a:bg)
        exec 'hi ' . a:group . ' guibg=' . a:bg
    endif
    if !empty(a:attr)
        exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
    endif
endfun

" Editor Highlights
call s:HL('ColorColumn',  '',       '',       '')
call s:HL('Cursor',       '',       '',       '')
call s:HL('CursorColumn', '',       '',       '')
call s:HL('CursorLine',   '',       'none',   'underline')
call s:HL('Directory',    s:blue,   '',       '')
call s:HL('DiffAdd',      'none',   s:green2,  'none')
call s:HL('DiffChange',   'none',   s:yellow2,'none')
call s:HL('DiffDelete',   'none',   s:red2,   'bold')
call s:HL('DiffText',     'none',   s:green,  'none')
call s:HL('ErrorMsg',     s:red,    '',       'bold')
call s:HL('VertSplit',    s:gray4,  s:gray1,  'none')
call s:HL('Folded',       s:gray5,  s:gray1,  '')
call s:HL('FoldColumn',   s:cyan1,  s:gray1,  '')
call s:HL('SignColumn',   s:gray2,  s:gray1,  '')
call s:HL('LineNr',       s:gray3,  '',       '')
call s:HL('CursorLineNr', s:gray5,  '',       'none')
call s:HL('MatchParen',   'none',   s:cyan1,  'bold')
call s:HL('ModeMsg',      s:green,  '',       '')
call s:HL('MoreMsg',      s:green,  '',       '')
call s:HL('NonText',      s:gray4,  '',       '')
call s:HL('Normal',       s:white,  'none',   'none')
call s:HL('Pmenu',        s:white,  s:gray3,  '')
call s:HL('PmenuSel',     s:white,  s:blue,   '')
call s:HL('PmenuSbar',    s:gray3,  s:gray4,  '')
call s:HL('PmenuThumb',   s:gray4,  s:gray5,  '')
call s:HL('Question',     s:green,  '',       '')
call s:HL('Search',       s:gray1,  s:yellow, '')
call s:HL('SpecialKey',   s:cyan4,  '',       '')
call s:HL('SpellCap',     s:blue,   '',       'undercurl')
call s:HL('SpellBad',     s:red,    '',       'undercurl')
call s:HL('StatusLine',   s:gray5,  s:gray3,  'none')
call s:HL('StatusLineNC', s:gray2,  s:gray4,  '')
call s:HL('TabLine',      s:gray3,  s:gray1,  'none')
call s:HL('TabLineFill',  s:gray4,  s:gray2,  'none')
call s:HL('TabLineSel',   s:gray2,  s:gray4,  '')
call s:HL('Title',        s:yellow, '',       'none')
call s:HL('Visual',       'none',   s:gray3,  '')
call s:HL('WarningMsg',   s:red,    '',       '')
call s:HL('WildMenu',     s:gray2,  s:blue,   '')

" Standard Syntax
call s:HL('Comment',      s:cyan4,  '',       'italic')
call s:HL('Constant',     s:cyan1,  '',       '')
call s:HL('String',       s:cyan1,  '',       '')
call s:HL('Character',    s:cyan1,  '',       '')
call s:HL('Identifier',   s:cyan5,  '',       'none')
call s:HL('Function',     s:cyan5,  '',       '')
call s:HL('Statement',    s:orange, '',       'none')
call s:HL('Operator',     s:orange, '',       'none')
call s:HL('PreProc',      s:cyan6,  '',       '')
call s:HL('Define',       s:cyan6,  '',       '')
call s:HL('Macro',        s:cyan6,  '',       '')
call s:HL('Type',         s:cyan2,  '',       'none')
call s:HL('Structure',    s:cyan2,  '',       '')
call s:HL('Special',      s:cyan3,  '',       '')
call s:HL('Underlined',   s:cyan5,  '',       'underline')
call s:HL('Error',        s:red,    '',       'bold')
call s:HL('Todo',         s:cyan3,  s:gray1,  'bold')

" Tree sitter
hi link TSFunction Normal
hi link TSConstructor Normal

" Gitsings
call s:HL('GitSignsAdd',     'none',   s:green,  'none')
call s:HL('GitSignsDelete',  'none',   s:red,    'none')
call s:HL('GitSignsChange',  'none',   s:orange, 'none')

" Vim color file
" colorschema by raulpy271


hi clear
set cursorline
set nu
let g:colors_name = "vegas"


hi Normal       ctermfg=Cyan
hi Cursor       ctermfg=Cyan
hi lCursor      ctermfg=DarkBlue
hi CursorLine   cterm=underline 
hi TabLine      cterm=underline   ctermfg=Red
hi TabNum       cterm=underline   ctermfg=Red
hi TabLineFill  cterm=underline   ctermfg=Red


hi DiffAdd      ctermbg=Red
hi DiffChange   ctermbg=Red
hi DiffDelete   ctermbg=Red
hi DiffText     ctermbg=Red
hi Directory    cterm=reverse
hi StatusLine   cterm=reverse     ctermfg=Yellow
hi StatusLineNC cterm=reverse     ctermfg=Cyan
hi ErrorMsg     ctermfg=Yellow    ctermbg=Red
hi WarningMsg   ctermfg=Yellow    ctermbg=Red 
hi WildMenu     ctermfg=Yellow    ctermbg=Red 
hi FoldColumn   ctermfg=DarkBlue
hi Folded       ctermfg=DarkBlue
hi IncSearch    cterm=reverse
hi LineNr       cterm=reverse      ctermfg=Cyan
hi ModeMsg      cterm=bold,reverse ctermfg=Red
hi MoreMsg      cterm=reverse      ctermfg=Cyan
hi NonText      ctermfg=Yellow
hi Question     ctermfg=Yellow     ctermbg=Red
hi SpecialKey   ctermfg=DarkBlue	   
hi Title        ctermfg=Yellow 
hi VertSplit    cterm=reverse      ctermfg=Yellow 
hi Visual       ctermfg=Yellow     ctermbg=Red 


hi Comment      cterm=NONE    ctermfg=White
hi Constant     cterm=NONE    ctermfg=Yellow
hi Identifier   cterm=NONE    ctermfg=Red
hi PreProc      cterm=NONE    ctermfg=Red
hi Special      cterm=NONE    ctermfg=Red
hi Statement    cterm=NONE    ctermfg=Red
hi Type	        cterm=NONE    ctermfg=Yellow
hi Ignore       cterm=reverse ctermfg=Red
hi Todo         cterm=NONE    ctermfg=Cyan

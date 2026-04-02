" Vim syntax file
" Language:	FastBASIC (Atari 8-bit)
" Maintainer:	Neovim contributors
" Last Change:	2026 Apr 01
" Reference:	https://github.com/dmsc/fastbasic/blob/master/manual.md

if exists('b:current_syntax')
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn case ignore

" iskeyword: allow identifiers with $, %, .
syn iskeyword @,48-57,.,$,%

" Comments {{{1
syn keyword fastbasicTodo TODO FIXME XXX NOTE contained

" Dot-comment: a line whose first non-whitespace token is '.' followed by
" a space or end-of-line (a bare '.' is the abbreviation form, not a comment)
syn match fastbasicComment "^\s*\.\%(\s.*\)\=$" contains=fastbasicTodo,@Spell
" Apostrophe comment
syn match fastbasicComment "'.*$" contains=fastbasicTodo,@Spell

" Strings {{{1
syn region fastbasicString start=+"+ end=+"+ oneline

" Numbers {{{1
" Hex literals (Atari FastBASIC uses $ prefix)
syn match fastbasicHex "\$[0-9A-Fa-f]\+"
" Decimal integers
syn match fastbasicNumber "\<\d\+\>"
" Floating-point
syn match fastbasicFloat "\<\d\+\.\d*\%([Ee][+-]\=\d\+\)\=\>"
syn match fastbasicFloat "\<\.\d\+\%([Ee][+-]\=\d\+\)\=\>"

" Statements {{{1
syn keyword fastbasicStatement
      \ CLOSE COLOR CONT DATA DIM DO DRAWTO ELSE ENDIF EXIT FILLTO FOR
      \ GET GOSUB GOTO GRAPHICS IF INPUT LOOP NEXT OPEN PLOT POSITION
      \ PRINT PROC ENDPROC PUT READ REPEAT RESTORE RETURN SOUND STEP
      \ THEN TO UNTIL WHILE

" Keywords used in statement contexts but not statements themselves {{{1
syn keyword fastbasicKeyword AS STEP TO

" Built-in functions {{{1
syn keyword fastbasicFunction
      \ ABS ADR ASC ATN CHR$ COS DPEEK ERR EXP FRE INT KEY LEN LOG
      \ PADDLE PEEK RAND SGN SIN SQR STR$ STRIG STICK TIME USR VAL

" Operators {{{1
syn keyword fastbasicOperator AND MOD NOT OR
" Abbreviated operator forms
syn match   fastbasicOperator "\<[AMONE]\.\>"
syn match   fastbasicArithmetic "[+\-*/\\^]"
syn match   fastbasicRelational "<>\|<=\|>=\|[<>=]"

" Type suffixes on identifiers {{{1
syn match fastbasicTypeSuffix "\a[[:alnum:].]*\zs[$%]"

" Statement separator {{{1
syn match fastbasicSeparator ":"

" Highlighting links {{{1
hi def link fastbasicArithmetic  Operator
hi def link fastbasicComment     Comment
hi def link fastbasicFloat       Float
hi def link fastbasicFunction    Function
hi def link fastbasicHex         Number
hi def link fastbasicKeyword     Keyword
hi def link fastbasicNumber      Number
hi def link fastbasicOperator    Operator
hi def link fastbasicRelational  Operator
hi def link fastbasicSeparator   Special
hi def link fastbasicStatement   Statement
hi def link fastbasicString      String
hi def link fastbasicTodo        Todo
hi def link fastbasicTypeSuffix  Special

let b:current_syntax = 'fastbasic'

let &cpo = s:cpo_save
unlet s:cpo_save

" vim: nowrap sw=2 sts=2 ts=8 noet fdm=marker:

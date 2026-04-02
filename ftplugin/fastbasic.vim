" Vim filetype plugin file
" Language:	FastBASIC (Atari 8-bit)
" Maintainer:	Neovim contributors
" Last Change:	2026 Apr 01

if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo&vim

" Apostrophe is the primary line comment; dot-comments are matched separately
setlocal comments=:'
setlocal commentstring='\ %s
setlocal formatoptions-=t formatoptions+=croql

let b:undo_ftplugin = 'setl fo< com< cms<'

if exists('loaded_matchit') && !exists('b:match_words')
  let b:match_ignorecase = 1
  let b:match_words =
        \   '\<if\>:\<else\>:\<endif\>,' ..
        \   '\<for\>:\<next\>,' ..
        \   '\<while\>:\<wend\>,' ..
        \   '\<do\>:\<loop\>,' ..
        \   '\<repeat\>:\<until\>,' ..
        \   '\<proc\>:\<endproc\>'
  let b:match_skip = 'synIDattr(synID(line("."),col("."),1),"name") =~? "comment\\|string"'
  let b:undo_ftplugin ..= ' | unlet! b:match_ignorecase b:match_skip b:match_words'
endif

let &cpo = s:cpo_save
unlet s:cpo_save

" vim: nowrap sw=2 sts=2 ts=8 noet:

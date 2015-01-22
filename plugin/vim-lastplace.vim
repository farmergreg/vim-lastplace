" ============================================================================
" File:        vim-lastplace.vim
" Description: Reopen files where you left off. Configurable.
" Author:      Greg Dietsche <vim@gregd.org>
" Licence:     MIT
" Website:     http://www.gregd.org/
" Version:     2.0.0
" ============================================================================

if exists("b:loaded_lastplace") || &cp
	finish
endif
let b:loaded_lastplace = 1

scriptencoding utf-8

if !exists('g:lastplace_ignore')
	let g:lastplace_ignore = "gitcommit,svn,hgcommit"
endif

fu! s:lastplace()
	if index(split(g:lastplace_ignore, ","), &filetype)==-1 && line("'\"") > 0 && line("'\"") <= line("$")
		if line("$") - line("'\"") > ((line("w$") - line("w0")) / 2) - 1
			"if we're not at the bottom of the file, center the
			"cursor on the screen after we make the jump
			exe "normal! g`\"zz"
		else
			"otherwise, show as much context as we can by jumping
			"to the end of the file and then to the mark. If we
			"pressed zz here, there would be blank lines at the
			"bottom of the screen. We intentionally leave the
			"last line blank by pressing <c-e> so the user has a
			"clue that they are near the end of the file.
			exe "normal! \G'\"\<c-e>"
		endif
	endif
endf

augroup vim_lastplace_plugin
	autocmd!
	autocmd BufReadPost * call s:lastplace()
augroup END

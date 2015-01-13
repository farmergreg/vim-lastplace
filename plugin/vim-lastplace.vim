" ============================================================================
" File:        vim-lastplace.vim
" Description: Reopen files where you left off. Configurable.
" Author:      Greg Dietsche <random@gregd.org>
" Licence:     MIT
" Website:     http://www.gregd.org/
" Version:     1.0.0
" ============================================================================

if exists("b:loaded_lastplace") || &cp
	finish
endif
let b:loaded_lastplace = 1

scriptencoding utf-8

if !exists('g:lastplace_ignore')
	let g:lastplace_ignore = "gitcommit,svn,hgcommit"
endif

au BufReadPost *
	\ if index(split(g:lastplace_ignore, ","), &filetype)==-1 && line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif

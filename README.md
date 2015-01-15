# vim-lastplace v1.0.0
Intelligently reopen files where you left off.

- Author  :  Greg Dietsche
- Web Page: http://www.gregd.org/

## Introduction

Intelligently reopen files where you left off. With the option to
ignore specific file types. By default git, svn, and mercurial
commit messages are ignored.

You can configure what file types to ignore by setting g:lastplace_ignore.
For example to only ignore git and snv commit messages try this in your vimrc:

        let g:lastplace_ignore = "gitcommit,svn"

## Installation
I recommend using [pathogen.vim](https://github.com/tpope/vim-pathogen).

    cd ~/.vim/bundle
    git clone git://github.com/dietsche/vim-lastplace.git

## About

Get the latest version submit pull requests, and file bug reports on GitHub:
        - https://github.com/dietsche/vim-lastplace

If you like this plugin, please star it on [GitHub](https://github.com/dietsche/vim-lastplace)!

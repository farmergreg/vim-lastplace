# vim-lastplace v2.0.0
Intelligently reopen files where you left off.

- Author  :  Greg Dietsche
- Web Page: http://www.gregd.org/

## Introduction

Intelligently reopen files where you left off. With the option to
ignore specific file types. By default git, svn, and mercurial
commit messages are ignored.

You can configure what file types to ignore by setting g:lastplace_ignore.
For example to only ignore git and svn commit messages try this in your vimrc:

        let g:lastplace_ignore = "gitcommit,svn"

## Installation
I recommend using [pathogen.vim](https://github.com/tpope/vim-pathogen).

    cd ~/.vim/bundle
    git clone git://github.com/dietsche/vim-lastplace.git

## Version History

### 2.0.0

- center the screen when restoring the cursor position
- if at the end of a file, keep as much of it on screen as possible


### 1.0.0

- initial version

## About

Get the latest version submit pull requests, and file bug reports on GitHub:
        - https://github.com/dietsche/vim-lastplace

If you like this plugin, please star and rate it on these sites:

- [GitHub](https://github.com/dietsche/vim-lastplace)!
- [Vim.org](http://www.vim.org/scripts/script.php?script_id=5090)


# vim-lastplace v3.0.0

Intelligently reopen files where you left off.  By default git,
svn, and mercurial commit messages are ignored because you
probably want to type a new message and not re-edit the previous
one.

You can configure what file types to ignore by setting
g:lastplace_ignore. For example to only ignore git and svn commit
messages try this in your vimrc:

        let g:lastplace_ignore = "gitcommit,svn"

## Installation
I recommend using [pathogen.vim](https://github.com/tpope/vim-pathogen).

    cd ~/.vim/bundle
    git clone git://github.com/dietsche/vim-lastplace.git

## Version History

### 3.0.0

- Open folds if the last edited area is inside a closed fold.

### 2.0.1

- Add gitrebase filetype to the ignore list.

### 2.0.0

- Center the screen when restoring the cursor position.
- When at the end of a file, keep as much of it on screen as possible.

### 1.0.0

- Initial version.

## About

- Author  :  Greg Dietsche
- Web Page: http://www.gregd.org/

Get the latest version, submit pull requests, and file bug reports
on GitHub:
- https://github.com/dietsche/vim-lastplace

If you like this plugin, please star and rate it on these sites:

- [GitHub](https://github.com/dietsche/vim-lastplace)
- [Vim.org](http://www.vim.org/scripts/script.php?script_id=5090)

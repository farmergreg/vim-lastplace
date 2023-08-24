# vim-lastplace v4.0.0

A [vim](https://www.vim.org/) / [nvim](https://neovim.io/) plugin that intelligently reopens files at your last edit position.

## Features
* Commit Messages
    - Many version control systems re-use the same file for commit message editing.
    - vim-lastplace treats each commit message as if it were a new file.
* Maximize Context
    - Center the cursor vertically after restoring last edit position.
    - Keep as much of the file on screen as possible when last edit position is at the end of the file.
* Opens folds if the last edit position is inside a fold.
* Works properly with new file templates and scripts that jump to a specific line in them.

## Install

### vim:
You can install vim-lastplace as a vim plugin without any additional tools when using [vim](https://www.vim.org/) 8 or newer.

```bash
mkdir -p ~/.vim/pack/plugins/start
rm -rf ~/.vim/pack/plugins/start/vim-lastplace
git clone --depth=1 https://github.com/farmergreg/vim-lastplace.git ~/.vim/pack/plugins/start/vim-lastplace
```

### neovim:
You can also install vim-lastplace and use it with [neovim](https://neovim.io/):

```bash
mkdir -p ~/.local/share/nvim/site/pack/plugins/start
rm -rf ~/.local/share/nvim/site/pack/plugins/start/vim-lastplace
git clone --depth=1 https://github.com/farmergreg/vim-lastplace.git ~/.local/share/nvim/site/pack/plugins/start/vim-lastplace
```

## Configure
You can configure what file types to ignore by setting g:lastplace_ignore in your vimrc.
This is a comma separated list.
By default it is set to:

```vim
    let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"
````

You can configure buffer types to ignore by setting g:lastplace_ignore_buftype in your vimrc.
This is a comma separated list.
By default it is set to:

```vim
    let g:lastplace_ignore_buftype = "quickfix,nofile,help"
```

Closed folds are automatically opened when jumping to the last edit position.
If you do not like this behavior you can disable it by placing this in your vimrc:

```vim
    let g:lastplace_open_folds = 0
```
## Conflicting Scripts:
Depending on which vim package you're using, vim may be preconfigured with last-edit-position logic that doesn't work as well as vim-lastplace.
If so, you may want to disable that in favor of vim-lastplace.
For example, for Vim as packaged with Git for Windows, you can edit `C:\Program Files\Git\etc\vimrc` and comment out the "Remember positions in files" `autocmd BufReadPost *` block.

## Miscellaneous
This plugin is complete and stable.
Please do not be afraid to try it even if there is very little recent activity in this repository.
If you do find a bug, please submit a pull request that fixes whatever problem you're having.

## Version History
vim-lastplace uses [semver](http://semver.org/) to manage version numbers.

### 4.0.0
- Release Date: 2023-08-24
- Use [keepjumps](https://github.com/farmergreg/vim-lastplace/pull/31) to prevent the addition of unwanted marks.
- Fix a bug with folds not opening. (Issue [#30](https://github.com/farmergreg/vim-lastplace/issues/30))
- Fix a bug when using multiple windows (Issue [#28](https://github.com/farmergreg/vim-lastplace/issues/28))
- Documentation Updates
    - vim8 installation documentation
    - nvim installation documentation
    - various other improvements
    - pre-generated helptags

### 3.2.1
- Release Date: 2020-01-20
- Re-center screen when opening folds
- Documentation fixes and updates

### 3.1.1
- Release Date: 2017-06-19
- Add 'nofile' and 'help' to lastplace_ignore_buftype. (Issue [#14](https://github.com/farmergreg/vim-lastplace/issues/14))
- Do not jump when a new file is created (Issue [#15](https://github.com/farmergreg/vim-lastplace/issues/15), [#16](https://github.com/farmergreg/vim-lastplace/issues/16))

### 3.1.0
- Release Date: 2017-02-21
- Add g:lastplace_ignore_buftype setting.
- Update github links from username dietsche to farmergreg.

### 3.0.4
- Release Date: 2016-09-06
- Add g:lastplace_open_folds option.

### 3.0.3
- Release Date: 2016-08-08
- Point release for Debian packaging. Changes all http links to https. No code changes.

### 3.0.2
- Release Date: 2016-05-12
- A fix for files that are smaller than the current screen size (issue #8)

### 3.0.1
- Release Date: 2016-01-16
- A fix for files with modelines.

### 3.0.0
- Release Date: 2015-06-14
- Open folds if the last edited area is inside a closed fold.

### 2.0.1
- Release Date: 2015-01-23
- Add gitrebase filetype to the ignore list.

### 2.0.0
- Release Date: 2015-01-22
- Center the screen when restoring the cursor position.
- When at the end of a file, keep as much of it on screen as possible.

### 1.0.0
- Release Date: 2015-01-14
- Initial version.

## About

- Author  :  Gregory L. Dietsche
- Web Page: https://www.gregd.org/

Get the latest version, submit pull requests, and file bug reports
on GitHub:
- https://github.com/farmergreg/vim-lastplace

If you like this plugin, please star and rate it on these sites:

- [GitHub](https://github.com/farmergreg/vim-lastplace)
- [Vim.org](http://www.vim.org/scripts/script.php?script_id=5090)

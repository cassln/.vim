# cassln's .vim directory

## to do
- [ ] try https://github.com/rstacruz/sparkup instead of emmet
- [ ] list all curently hotkeys in readme.md
- [ ] fix less linting
- [ ] find goodies in https://robots.thoughtbot.com/tags/vim
- [ ] try https://github.com/mileszs/ack.vim
- [ ] russian language fix
- [ ] leader as space?
- [ ] do i need easymotion?
- [ ] find good snippets plugin. alternatives: SirVer/ultisnips, garbas/vim-snipmate, Shougo/neosnippet, drmingdrmer/xptemplate
- [ ] find good completeion plugin
- [ ] write why you use all this plugins
- [ ] fix this: need { } instead of this {  }, when pressing space
- [ ] fix path completion in node

## plugins

To install.
```
git submodule add <url> bundle/<name>
```

To uninstall.
```
git rm bundle/<name>
```

To disable.
```
git submodule deinit bundle/<name>
```

To enable.
```
git submodule init bundle/<name> && git submodule update
```

## setup

Clone repo to $HOME directory.

	$ cd ~ && git clone git@github.com:cassln/.vim.git
Link this in .vimrc.
	
	$ echo 'source $HOME/.vim/main.vim' > .vimrc
Update submodules (plugins).
	
	$ cd .vim && git submodule init && git submodule update

## hotkeys
Note that `<leader>` is `\`.

|command|value|
|:------------|:--------------|
|`<leader>f` | Open NERD Tree.|



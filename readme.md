# cassln's .vim directory

## to do
- [ ] try https://github.com/rstacruz/sparkup instead of emmet
- [ ] list all curently hotkeys in readme.md
- [ ] fix less linting
- [ ] find goodies in https://robots.thoughtbot.com/tags/vim
- [ ] try https://github.com/mileszs/ack.vim

## setup

Clone repo to $HOME directory.

	$ cd ~ && git clone git@github.com:cassln/.vim.git
Link this in .vimrc.
	
	$ echo 'source $HOME/.vim/vimrc' > .vimrc
Update submodules (plugins).
	
	$ cd .vim && git submodule init && git submodule update

## goods

Update vimrc.

	:so $MYVIMRC
	
## hotkeys
Note that `<leader>` is `\`.

|command|value|
|:------------|:--------------|
|`<leader>f` | Open NERD Tree.|



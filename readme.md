# cassln's .vim directory

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

`<leader>f` -- open NERD Tree.



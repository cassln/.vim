# cassln's .vim directory

## to do
- [ ] try https://github.com/rstacruz/sparkup instead of emmet
- [ ] list all curently hotkeys in readme.md
- [x] fix less linting
- [ ] find goodies in https://robots.thoughtbot.com/tags/vim
- [ ] try https://github.com/mileszs/ack.vim
- [ ] russian language fix
- [x] leader as space?
- [x] do i need easymotion?
- [ ] find good snippets plugin. alternatives: SirVer/ultisnips, garbas/vim-snipmate, Shougo/neosnippet, drmingdrmer/xptemplate
- [x] find good completeion plugin
- [x] write why you use all this plugins
- [x] fix this: need `{_}` instead of this `{__}`, when pressing space
- [ ] fix path completion in node
- [ ] camelCase move

## setup

Clone repo to $HOME directory.

	$ cd ~ && git clone git@github.com:cassln/.vim.git
Link this in .vimrc.
	
	$ echo 'source $HOME/.vim/.vimrc' > .vimrc
Update submodules (plugins).
	
	$ cd .vim && git submodule init && git submodule update

## operations

install plugin
```
git submodule add <url> bundle/<name>
```

uninstall plugin
```
git rm bundle/<name>
```

temporary disable plugin
```
git submodule deinit bundle/<name>
```

enable disabled plugin
```
git submodule init bundle/<name> && git submodule update
```

## why use this plugins?

### clang_complete
completions for c and c++ languages

### csapprox & vim-guicolorscheme
colorschemes support in terminal

### csapprox & vim-guicolorscheme
don't know

### delimitMate
autocompletion for {(['""'])}

### MatchTag
don't know

### nerdtree
file system tree

### pluntuml-syntax
pluntuml syntax :)

### syntastic
linter

### tcomment_vim
comment hotkeys

### vim-jade
jade syntax

### vim-javascript-syntax
javascript syntax

### vim-json
json syntax

### vim-less
less syntax

### vim-node
node.js plugin

### vim-repeat
don't know

### vim-surround
???

### vim-web-indent
???

## hotkeys
`<leader>` is `<Space>`

|command|value|
|:------------|:--------------|
|`<leader>f` | Open NERD Tree.|



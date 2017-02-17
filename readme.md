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

clone repo to home directory
```bash
$ cd ~ && git clone git@github.com:cassln/.vim.git
```

link this in .vimrc
```bash
$ echo 'source $HOME/.vim/.vimrc' > .vimrc
```

update submodules (plugins)
```bash	
$ cd .vim && git submodule init && git submodule update
```

## operations (UPDATE THIS)

install plugin
```bash
$ git submodule add <url> pack/plugins/start/<name>
```

uninstall plugin
```bash
$ git rm pack/plugins/start/<name>
```

temporary disable plugin
```bash
$ git submodule deinit pack/plugins/start/<name>
```

enable disabled plugin
```bash
$ git submodule init pack/plugins/start/<name> && git submodule update
```

## why use this plugins?

### clang_complete
completions for c and c++ languages

### csapprox & vim-guicolorscheme
colorschemes support in terminal

### ctrlp
full path fuzzy finder

### delimitMate
autocompletion for {(['""'])}

### MatchTag
???

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
???

### vim-surround
???

### vim-web-indent
???

### [vim-sleuth](https://github.com/tpope/vim-sleuth)
autodetect file indetation

## hotkeys
`<leader>` is `<Space>`

|command|value|
|:------------|:--------------|
|`<leader>f` | Open NERD Tree.|



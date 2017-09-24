# cassln's .vim directory
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

## operations
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
* [clang_complete](https://github.com/Rip-Rip/clang_complete) — completions for c and c++ languages.
* [csapprox](https://github.com/godlygeek/csapprox) &
	[vim-guicolorscheme](https://github.com/thinca/vim-guicolorscheme) — colorschemes support in terminal.
* [ctrlp](https://github.com/kien/ctrlp.vim) — full path fuzzy finder.
* [delimitMate](https://github.com/Raimondi/delimitMate) — autocompletion for quotes/parenthesizes.
* [nerdtree](https://github.com/scrooloose/nerdtree) — file system tree.
* [syntastic](https://github.com/vim-syntastic/syntastic) — linting.
* [vim-node](https://github.com/moll/vim-node) — node.js plugin.
* [tcomment_vim](https://github.com/tomtom/tcomment_vim) — comment hotkeys.
* [pluntuml-syntax](https://github.com/aklt/plantuml-syntax) — pluntuml syntax.
* [vim-jade](https://github.com/digitaltoad/vim-pug) — jade syntax.
* [vim-javascript](https://github.com/pangloss/vim-javascript) — javascript syntax.
* [vim-jsx](https://github.com/mxw/vim-jsx) — jsx syntax.
* [vim-json](https://github.com/elzr/vim-json) — json syntax.
* [vim-less](https://github.com/groenewege/vim-less) — less syntax.
* [vim-sleuth](https://github.com/tpope/vim-sleuth) — autodetect file indetation.
* [MatchTag](https://github.com/gregsexton/MatchTag) ???
* [vim-repeat](https://github.com/tpope/vim-repeat)  — enable repeating supported plugin maps with `.`.
* [vim-surround](https://github.com/tpope/vim-surround) — easy quoting/parenthesizing.
* [vim-web-indent](https://github.com/lukaszb/vim-web-indent) ???

## hotkeys
`<leader>` is `<Space>`

|command|value|
|:------------|:--------------|
|`<leader>f` | Open NERD Tree.|

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



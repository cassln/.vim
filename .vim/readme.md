# vim config

## Plugins
install plugin
```bash
$ config submodule add <url> .vim/pack/plugins/start/<name>
```

uninstall plugin
```bash
$ config rm .vim/pack/plugins/start/<name>
```

temporary disable plugin
```bash
$ config submodule deinit .vim/pack/plugins/start/<name>
```

enable disabled plugin
```bash
$ config submodule init .vim/pack/plugins/start/<name> && config submodule update
```

## why use this plugins?
* [clang_complete](https://github.com/Rip-Rip/clang_complete) — completions for c and c++ languages.
* [csapprox](https://github.com/godlygeek/csapprox) &
* [vim-guicolorscheme](https://github.com/thinca/vim-guicolorscheme) — colorschemes support in terminal.
* [ctrlp](https://github.com/kien/ctrlp.vim) — full path fuzzy finder.
* [delimitMate](https://github.com/Raimondi/delimitMate) — autocompletion for quotes/parenthesizes.
* [nerdtree](https://github.com/scrooloose/nerdtree) — file system tree.
* [ale](https://github.com/w0rp/ale) — linting.
* [vim-node](https://github.com/moll/vim-node) — node.js plugin.
* [tcomment_vim](https://github.com/tomtom/tcomment_vim) — comment hotkeys.
* [pluntuml-syntax](https://github.com/aklt/plantuml-syntax) — pluntuml syntax.
* [vim-jade](https://github.com/digitaltoad/vim-pug) — jade syntax.
* [vim-javascript](https://github.com/pangloss/vim-javascript) — javascript syntax.
* [vim-jsx](https://github.com/mxw/vim-jsx) — jsx syntax.
* [vim-json](https://github.com/elzr/vim-json) — json syntax.
* [vim-less](https://github.com/groenewege/vim-less) — less syntax.
* [vim-sleuth](https://github.com/tpope/vim-sleuth) — autodetect file indetation.
* [vim-repeat](https://github.com/tpope/vim-repeat)  — enable repeating supported plugin maps with `.`.
* [vim-surround](https://github.com/tpope/vim-surround) — easy quoting/parenthesizing.
* [vim-web-indent](https://github.com/lukaszb/vim-web-indent) ???
* [typescript-vim](https://github.com/leafgarland/typescript-vim) — typescript syntax.

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
- [x] fix path completion in node
- [ ] camelCase move
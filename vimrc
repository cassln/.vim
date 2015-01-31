"==================================================
" Google Go syntax

filetype off
filetype plugin indent off
set runtimepath+=/usr/local/go/misc/vim
filetype plugin indent on
syntax on

source $HOME/.vim/vimrc.bundle

"==================================================
" Bundles settings

source $HOME/.vim/vimrc.delimitmate
source $HOME/.vim/vimrc.neocomplcache
source $HOME/.vim/vimrc.neosnippets
source $HOME/.vim/vimrc.nerdtree
source $HOME/.vim/vimrc.syntastic
"source $HOME/.vim/vimrc.airline
source $HOME/.vim/vimrc.clang_complete

source $HOME/.vim/vimrc.common
source $HOME/.vim/vimrc.gui

"-------------------------
" vim-jade

" Associate jade syntax with emblem
au BufRead,BufNewFile *.emblem setfiletype jade

hi SpecialKey cterm=NONE

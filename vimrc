source $HOME/.vim/vimrc.bundle

source $HOME/.vim/vimrc.delimitmate
source $HOME/.vim/vimrc.neocomplcache
source $HOME/.vim/vimrc.neosnippets
source $HOME/.vim/vimrc.nerdtree
source $HOME/.vim/vimrc.syntastic
source $HOME/.vim/vimrc.airline
source $HOME/.vim/vimrc.clang_complete

source $HOME/.vim/vimrc.common
source $HOME/.vim/vimrc.gui

"-------------------------
" vim-jade

" Associate jade syntax with emblem
au BufRead,BufNewFile *.emblem setfiletype jade

hi SpecialKey cterm=NONE

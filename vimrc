source $HOME/.vim/vimrc.common

source $HOME/.vim/vimrc.bundle

"==================================================
" Bundles settings

source $HOME/.vim/vimrc.neocomplcache
source $HOME/.vim/vimrc.nerdtree
source $HOME/.vim/vimrc.syntastic
source $HOME/.vim/vimrc.airline
source $HOME/.vim/vimrc.delimitmate

"-------------------------
" vim-jade

" Associate jade syntax with emblem
au BufRead,BufNewFile *.emblem setfiletype jade



source $HOME/.vim/bundle.vim

source $HOME/.vim/delimitmate.vim
" source $HOME/.vim/neocomplcache.vim
" source $HOME/.vim/neosnippets.vim
source $HOME/.vim/nerdtree.vim
source $HOME/.vim/syntastic.vim
source $HOME/.vim/airline.vim
source $HOME/.vim/clang_complete.vim

source $HOME/.vim/common.vim
source $HOME/.vim/gui.vim

"-------------------------
" vim-jade

" Associate jade syntax with emblem
autocmd BufRead,BufNewFile *.emblem setfiletype jade

hi SpecialKey cterm=NONE

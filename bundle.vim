filetype off
filetype plugin indent off
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on
syntax on

" Install jshint and csslint for syntastic
" Path to jshint if it not installed globally, then use local installation
if !executable("jshint")
    let g:syntastic_javascript_jshint_exec = '~/.vim/node_modules/.bin/jshint'
    "let g:syntastic_javascript_jshint_exec = '~/.vim/node_modules/.bin/jshint'
    if !executable(expand(g:syntastic_javascript_jshint_exec))
        silent ! echo 'Installing jshint' && npm --prefix ~/.vim/ install jshint
    endif
endif

" Path to csslint if it not installed globally, then use local installation
if !executable("csslint")
    let g:syntastic_css_csslint_exec='~/.vim/node_modules/.bin/csslint'
    if !executable(expand(g:syntastic_css_csslint_exec))
        silent ! echo 'Installing csslint' && npm --prefix ~/.vim/ install csslint
    endif
endif

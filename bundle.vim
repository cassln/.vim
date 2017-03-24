"-------------------------------------------------------------------------------
" clang_complete

let g:clang_complete_auto = 0
let g:clang_auto_select = 0
let g:clang_use_library = 1
let g:clang_complete_macros = 1
let g:clang_complete_patterns = 1

"-------------------------------------------------------------------------------
" delimitmate

let delimitMate_expand_cr = 1
let delimitMate_expand_space = 0
let delimitMate_matchpairs = "(:),[:],{:}"

"-------------------------------------------------------------------------------
" nerdtree

let NERDTreeShowHidden=1
let NERDTreeChDirMode=0
let NERDTreeDirArrows=1
nmap <silent> <leader>f :NERDTreeFind<CR>

"-------------------------------------------------------------------------------
" syntastic

" enable autochecks
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_signs=1

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_jade_checkers = ['jade_lint']

" open quicfix window with all error found
nmap <silent> <leader>ll :lopen<cr>
" previous syntastic error
" nmap <silent> [ :lprev<cr>
" next syntastic error
" nmap <silent> ] :lnext<cr>

" install jshint and csslint for syntastic
" path to jshint if it not installed globally, then use local installation
if !executable("jshint")
	let g:syntastic_javascript_jshint_exec = '~/.vim/node_modules/.bin/jshint'
	if !executable(expand(g:syntastic_javascript_jshint_exec))
		silent ! echo 'Installing jshint' && npm --prefix ~/.vim/ install jshint
	endif
endif

if !executable("eslint")
	let g:syntastic_javascript_eslint_exec = '~/.vim/node_modules/.bin/eslint'
	if !executable(expand(g:syntastic_javascript_eslint_exec))
		silent ! echo 'Installing eslint' && npm --prefix ~/.vim/ install eslint
	endif
endif

" path to csslint if it not installed globally, then use local installation
if !executable("csslint")
	let g:syntastic_css_csslint_exec='~/.vim/node_modules/.bin/csslint'
	if !executable(expand(g:syntastic_css_csslint_exec))
		silent ! echo 'Installing csslint' && npm --prefix ~/.vim/ install csslint
	endif
endif

"-------------------------------------------------------------------------------
" json

let g:vim_json_syntax_conceal=0

"-------------------------------------------------------------------------------
" ctrlp

let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

if executable('ag')
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
	let g:ctrlp_use_caching = 0
endif


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
nmap <silent> <leader>f :NERDTreeFind<CR>

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

"-------------------------------------------------------------------------------
" vim-markdown-preview

let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_github=1

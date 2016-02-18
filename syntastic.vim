"-------------------------
" Syntastic

" Enable autochecks
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_signs=1

let g:syntastic_cpp_compiler = 'clang++'

" open quicfix window with all error found
nmap <silent> <leader>ll :lopen<cr>
" previous syntastic error
nmap <silent> [ :lprev<cr>
" next syntastic error
nmap <silent> ] :lnext<cr>
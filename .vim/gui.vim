if has('gui_running')
	highlight Cursor guifg=black guibg=lightgreen

	set guifont=Monospace\ 11
	set guioptions-=m	" menu bar
	set guioptions-=T	" toolbar
	set guioptions-=r	" right-hand scroll bar
	set guioptions-=L	" left-hand scroll bar
	set guioptions+=e	" gui tab pages

	" no beep
	autocmd GUIEnter * set visualbell t_vb=

	nnoremap <C-S-tab> :tabprevious<CR>
	nnoremap <C-tab>   :tabnext<CR>
	nnoremap <C-t>     :tabnew<CR>
	inoremap <C-S-tab> <Esc>:tabprevious<CR>i
	inoremap <C-tab>   <Esc>:tabnext<CR>i
	inoremap <C-t>     <Esc>:tabnew<CR>

	nnoremap <A-1> 1gt
	nnoremap <A-2> 2gt
	nnoremap <A-3> 3gt
	nnoremap <A-4> 4gt
	nnoremap <A-5> 5gt
	nnoremap <A-6> 6gt
	nnoremap <A-7> 7gt
	nnoremap <A-8> 8gt
	nnoremap <A-9> 9gt
	nnoremap <A-0> 10gt

	" fix browser opening
	let g:netrw_browsex_viewer="setsid xdg-open"

	" inoremap <C-S-w> <Esc>:tabclose<CR>
	" nnoremap <C-S-w> :tabclose<CR>
endif

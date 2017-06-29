"-------------------------------------------------------------------------------
" general options

" enable per-directory .vimrc files and disable unsafe commands in them
set exrc secure

" auto reload changed files
set autoread

" indicates fast terminal connection
set ttyfast

" set character encoding to use in vim
set encoding=utf-8

" let vim know what encoding we use in our terminal
set termencoding=utf-8

" which EOl used. for us it's unix
" not works with modifiable=no
if &modifiable
	set fileformat=unix
endif

" enable syntax highlighting
syntax on

" autocomplete on :e
set wildmenu
set wildmode=list:longest

"-------------------------------------------------------------------------------
" keymaps

nnoremap <Space> <Nop>
let mapleader = "\<Space>"

" copy & paste to system clipboard with <Leader>p and <Leader>y:
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" automatically jump to end of text pasted
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" select text just pasted
noremap gV `[v`]

" change indent of selected block without loss selection
vmap < <gv
vmap > >gv

" execute current file
nnoremap <leader>r :!%:p<Enter>

" vp doesn't replace paste buffer
function! RestoreRegister()
	let @" = s:restore_reg
	return ''
endfunction
function! s:Repl()
	let s:restore_reg = @"
	return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()

"-------------------------------------------------------------------------------
" display options

colorscheme candy

" show mode
set showmode

" show file name in window title
set title

" enable display whitespace characters
set list

" setting up how to display whitespace characters
set listchars=tab:>\ ,trail:·,extends:⋯,precedes:⋯,nbsp:~,space:·

" numbers of rows to keep to the left and to the right off the screen
set scrolloff=10

" numbers of columns to keep to the left and to the right off the screen
set sidescrolloff=10

" display command which you typing and other command related stuff
set showcmd

" indicate that last window have a statusline too
set laststatus=2

" the cursor should stay where you leave it, instead of moving to the first non
" blank of the line
set nostartofline

" enable wrapping long string
set wrap

" display line numbers
set number

" highlight line with cursor
set cursorline

" higlight column right after max textwidth
set colorcolumn=81

" for colorscheme support
set t_Co=256

" set highlighting for columns in colorcolumn
highlight ColorColumn ctermbg=lightGrey
highlight SpecialKey term=NONE cterm=NONE gui=NONE

"-------------------------------------------------------------------------------
" tab options

" copy indent from previous line
set autoindent

" add additional indents when necessary
set smartindent

" Whe you hit tab at start of line, indent added according to shiftwidth value
set smarttab

" number of spaces to use for each step of indent
set shiftwidth=4

" number of spaces that a Tab in the file counts for
set tabstop=4

" same but for editing operation (not shure what exactly does it means)
" but in most cases tabstop and softtabstop better be the same
set softtabstop=4

" Round indent to multiple of 'shiftwidth'.
" Indentation always be multiple of shiftwidth
" Applies to  < and > command
set shiftround

"-------------------------------------------------------------------------------
" search options

" add the g flag to search/replace by default
set gdefault

" highlight search results
set hlsearch

" ignore case in search patterns
set ignorecase

" override the 'ignorecase' option if the search patter ncontains upper case characters
set smartcase

" live search. While typing a search command, show where the pattern
set incsearch

" disable higlighting search result on Enter key
nnoremap <silent> <cr> :nohlsearch<cr><cr>

" show matching brackets
set showmatch

" make < and > match as well
set matchpairs+=<:>

" use ag as grep if exists
if executable('ag')
	set grepprg=ag\ --nogroup\ --nocolor
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

"-------------------------------------------------------------------------------
" edit

" allow backspace to remove indents, newlines and old text
set backspace=indent,eol,start

" disable backups file
set nobackup

" disable vim common sequense for saving.
" by defalut vim write buffer to a new file, then delete original file
" then rename the new file.
set nowritebackup

" disable swp files
set noswapfile

"-------------------------------------------------------------------------------
" statusline
set statusline=%<%f\ %m%r%h%w%=[%l:%L,%c%V]\ %3p%%\ %16y

"-------------------------------------------------------------------------------
" autocmd

if has("autocmd")

	augroup vimrc

	au!
		" auto reload vim after your change it
		au BufWritePost *.vim source $MYVIMRC
		au BufWritePost .vimrc source $MYVIMRC

		" restore cursor position :help last-position-jump
		au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
		  \| exe "normal g'\"" | endif

		" set use curent editing file as current dir
		" autocmd BufEnter * if &ft !~ '^nerdtree$' | silent! lcd %:p:h | endif

		" filetypes aliases
		au BufRead,BufNewFile *.js set ft=javascript.javascript-jquery
		au BufRead,BufNewFile *.json set ft=json
		au BufRead,BufNewFile Jakefile set syntax=javascript
		au BufRead,BufNewFile *.jake set ft=javascript
		au BufRead,BufNewFile *.md set ft=markdown
		au BufRead,BufNewFile *.emblem setfiletype jade
		au FileType jade set ft=jade.pug

		" auto close preview window, it uses with tags
		autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
		autocmd InsertLeave * if pumvisible() == 0|pclose|endif

		" disable vertical line at max string length in nerdtree
		autocmd FileType * setlocal colorcolumn=81
		autocmd FileType nerdtree setlocal colorcolumn=""
		autocmd FileType nerdtree setlocal nolist

	augroup END

endif


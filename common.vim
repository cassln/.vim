"==================================================
" General options

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc secure

" Auto reload changed files
set autoread

" Indicates fast terminal connection
set ttyfast

" Set character encoding to use in vim
set encoding=utf-8

" Let vim know what encoding we use in our terminal
set termencoding=utf-8

" Which EOl used. For us it's unix
" Not works with modifiable=no
if &modifiable
    set fileformat=unix
endif

" Enable syntax highlighting
syntax on

" autocomplete on :e
set wildmenu
set wildmode=list:longest

"==================================================
" Keymaps

" let mapleader = "\<Space>"

" Copy & paste to system clipboard with <Leader>p and <Leader>y:
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Automatically jump to end of text you pasted
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Quickly select text you just pasted
noremap gV `[v`]

" change indent of selected block without loss selection
vmap < <gv
vmap > >gv

" Execute current file
nnoremap <leader>r :!%:p<Enter>

"==================================================
" Display options

colorscheme candy

" Showmode is useless with airline
set noshowmode

" Show file name in window title
set title

" Enable display whitespace characters
set list

" Setting up how to display whitespace characters
set listchars=tab:\ \ ,trail:·,extends:⋯,precedes:⋯,nbsp:~
highlight SpecialKey cterm=NONE

" Numbers of rows to keep to the left and to the right off the screen
set scrolloff=10

" Numbers of columns to keep to the left and to the right off the screen
set sidescrolloff=10

" Display command which you typing and other command related stuff
set showcmd

" Indicate that last window have a statusline too
set laststatus=2

" The cursor should stay where you leave it, instead of moving to the first non
" blank of the line
set nostartofline

" Enable wrapping long string
set wrap

" Display Line numbers
set number

" Highlight line with cursor
set cursorline

" higlight column right after max textwidth
set colorcolumn=81

" for colorscheme support
set t_Co=256

" set highlighting for columns in colorcolumn
highlight ColorColumn ctermbg=lightGrey

"==================================================
" Tab options

" Copy indent from previous line
set autoindent

" Enable smart indent. it add additional indents when necessary
set smartindent

" Whe you hit tab at start of line, indent added according to shiftwidth value
set smarttab

" number of spaces to use for each step of indent
set shiftwidth=4

" Number of spaces that a Tab in the file counts for
set tabstop=4

" Same but for editing operation (not shure what exactly does it means)
" but in most cases tabstop and softtabstop better be the same
set softtabstop=4

" Round indent to multiple of 'shiftwidth'.
" Indentation always be multiple of shiftwidth
" Applies to  < and > command
set shiftround

filetype plugin indent on

"==================================================
" Search options

" Add the g flag to search/replace by default
set gdefault

" Highlight search results
set hlsearch

" Ignore case in search patterns
set ignorecase

" Override the 'ignorecase' option if the search patter ncontains upper case characters
set smartcase

" Live search. While typing a search command, show where the pattern
set incsearch

" Disable higlighting search result on Enter key
nnoremap <silent> <cr> :nohlsearch<cr><cr>

" Show matching brackets
set showmatch

" Make < and > match as well
set matchpairs+=<:>

"==================================================
" Folding

" disable folding"
set nofoldenable

"==================================================
" Edit

" Allow backspace to remove indents, newlines and old text
set backspace=indent,eol,start

" Add '-' as recognized word symbol. e.g dw delete all 'foo-bar' instead just 'foo'
set iskeyword+=-

" Disable backups file
set nobackup

" Disable vim common sequense for saving.
" By defalut vim write buffer to a new file, then delete original file
" then rename the new file.
set nowritebackup

" Disable swp files
set noswapfile

"==================================================
" Aautocmd

" It executes specific command when specific events occured
" like reading or writing file, or open or close buffer
if has("autocmd")
    " Define group of commands,
    " Commands defined in .vimrc don't bind twice if .vimrc will reload
    augroup vimrc
    " Delete any previosly defined autocommands
    au!
        " Auto reload vim after your change it
        au BufWritePost *.vim source $MYVIMRC | AirlineRefresh
        au BufWritePost .vimrc source $MYVIMRC | AirlineRefresh

        " Restore cursor position :help last-position-jump
        au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
          \| exe "normal g'\"" | endif

		" Set use curent editing file as current dir
		" autocmd BufEnter * if &ft !~ '^nerdtree$' | silent! lcd %:p:h | endif

        " Set filetypes aliases
        au FileType htmldjango set ft=html.htmldjango
        " au FileType scss set ft=scss.css
        " au FileType less set ft=less.css
        au BufRead,BufNewFile *.js set ft=javascript.javascript-jquery
        au! BufRead,BufNewFile *.json set ft=json
        au BufRead,BufNewFile Jakefile set syntax=javascript
        au BufRead,BufNewFile *.jake set ft=javascript
        " Execute python \ -mjson.tool for autoformatting *.json
        au BufRead,BufNewFile *.json set equalprg=python\ -mjson.tool
        au BufRead,BufNewFile *.bemhtml set ft=javascript
        au BufRead,BufNewFile *.xjst set ft=javascript
        au BufRead,BufNewFile *.tt2 set ft=tt2
        au BufRead,BufNewFile *.plaintex set ft=plaintex.tex

        " Auto close preview window, it uses with tags,
        " I don't use it
        autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
        autocmd InsertLeave * if pumvisible() == 0|pclose|endif

        " Disable vertical line at max string length in NERDTree
        autocmd FileType * setlocal colorcolumn=80
        autocmd FileType nerdtree setlocal colorcolumn=""

        " Enable Folding, uses plugin vim-javascript-syntax
        " au FileType javascript* call JavaScriptFold()

    " Group end
    augroup END

endif

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

" TODO move it later
let g:vim_json_syntax_conceal=0

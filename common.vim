"-------------------------------------------------------------------------------
" general options

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

"-------------------------------------------------------------------------------
" keymaps

" let mapleader = "\<Space>"

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

"-------------------------------------------------------------------------------
" search options

" add the g flag to search/replace by default
set gdefault

" highlight search results
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

"-------------------------------------------------------------------------------
" folding

set nofoldenable

"-------------------------------------------------------------------------------
" edit

" allow backspace to remove indents, newlines and old text
set backspace=indent,eol,start

" add '-' as recognized word symbol. e.g dw delete all 'foo-bar' instead just 'foo'
set iskeyword+=-

" disable backups file
set nobackup

" Disable vim common sequense for saving.
" By defalut vim write buffer to a new file, then delete original file
" then rename the new file.
set nowritebackup

" disable swp files
set noswapfile

"-------------------------------------------------------------------------------
" autocmd

if has("autocmd")

    augroup vimrc

    au!
        " auto reload vim after your change it
        au BufWritePost *.vim source $MYVIMRC | AirlineRefresh
        au BufWritePost .vimrc source $MYVIMRC | AirlineRefresh

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

        " auto close preview window, it uses with tags
        autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
        autocmd InsertLeave * if pumvisible() == 0|pclose|endif

        " disable vertical line at max string length in nerdtree
        autocmd FileType * setlocal colorcolumn=81
        autocmd FileType nerdtree setlocal colorcolumn=""

    augroup END

endif



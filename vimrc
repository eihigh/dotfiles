set runtimepath+=$HOME

" basic settings
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp932,euc-jp

set nobackup
set noswapfile

set autoread
set autowrite

set showcmd
set showmatch
set matchtime=1

set tabstop=2
set shiftwidth=2

set hlsearch
set ignorecase
set smartcase
set smartindent

set scrolloff=8

set backspace=eol,indent,start

set updatetime=300

set title

noremap h h
noremap t gj
noremap r gk
noremap s l

nnoremap e v
nnoremap E V
nnoremap <C-e> <C-v>

noremap n f
noremap N F

noremap ( N
noremap ) n

map Y y$
noremap m <C-o>
noremap M <C-i>

nnoremap + <C-a>
nnoremap - <C-x>

noremap <BS> "_xh
noremap x "_s

" quick mark
noremap H mH
noremap S mS
noremap B mB
noremap kh `H
noremap ks `S
noremap kb `B

nnoremap <C-p> :cprevious<CR>
nnoremap <C-n> :cnext<CR>
nnoremap <C-c> :cclose<CR>
nnoremap <C-l> zt

" navigate windows
nnoremap <Left> <C-w>h
nnoremap <Down> <C-w>j
nnoremap <Up> <C-w>k
nnoremap <Right> <C-w>l

nnoremap j :w<CR>

if isdirectory(expand('~/.vim'))
	runtime! .vim/basic/**/*.vim

	" load advanced settings
	if v:version >= 800
		source ~/.vim/plug/list.vim
		runtime! .vim/plug/config/*.vim
		runtime! .vim/advanced/**/*.vim
	endif

	if has('win32')
		set runtimepath+=$HOME/.vim/after
	endif
endif

set mouse=
set noeb
set nocompatible
set clipboard=unnamed

if has("gui")
    winpos 0 0
    set guioptions-=T
    set guioptions-=m
    set guioptions-=R
    set guioptions-=r
    set guioptions-=L
    set guioptions-=l
    set guioptions-=b
    set guioptions-=e
    set guioptions-=!
endif

set number
set relativenumber
set cursorline
set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start

set columns=84
set colorcolumn=80
set lines=52
set cmdheight=2
set foldenable
set foldmethod=marker
set fdl=3
set linebreak
set wrap
set showmatch

set ignorecase smartcase
set incsearch
set hlsearch

filetype indent on
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=2
set noexpandtab
set autoindent
set smartindent
set cindent

set notitle
set autoread
set confirm
set autochdir
set nobackup
set noswapfile

set showcmd
set wildmenu
set wildmode=list:longest
set laststatus=2
set statusline=[%F]%r%m%*%=[L:%l/%L,C:%c][%p%%]

set complete-=i
set lazyredraw

set history=50

set guifont=Cousine:h12

if has("termguicolors")
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

set background=dark
colorscheme gruvbox

" Hide ~s for Blank Lines
highlight NonText guifg=bg

cd E:\Work\

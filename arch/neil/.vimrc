set mouse=
set noeb
set nocompatible
set clipboard=unnamed

set number
set relativenumber
set cursorline
set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start

set colorcolumn=80
set lines=50
set cmdheight=1
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

set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark
colorscheme gruvbox

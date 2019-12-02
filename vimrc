" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1
syntax enable
set tabstop=3
set softtabstop=3
set expandtab
set number
set showcmd
filetype indent on
set wildmenu
set showmatch
set mat=2
set incsearch
let mapleader = ","
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
set ignorecase
set smartcase
set lazyredraw
colorscheme skittles_berry
set encoding=utf8
set ai "Auto indent
set si "Smart indent

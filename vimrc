#         _                    
#        (_)                   
#  __   ___ _ __ ___  _ __ ___ 
#  \ \ / / | '_ ` _ \| '__/ __|
#   \ V /| | | | | | | | | (__ 
#    \_/ |_|_| |_| |_|_|  \___|
#/etc/vimrc                             
                             


" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

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

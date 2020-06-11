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


" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

" vundle things
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'Yggdroot/indentLine'
Plugin 'lilydjwg/colorizer'

call vundle#end()
filetype plugin indent on    " required vundle thing

"" Brief help
" :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to  auto-approve removal

" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

syntax enable   " nice colors
" seartching for files
set path +=**   " seartch into sub-direcrotys
set wildmenu
" ctags:   ctrl ] , g ctrl ], ctrl t
command! MakeTags !ctags -R . 
" insert skeleton cpp file
nnoremap ,cpp :-1read $HOME/.vim/basic.cpp<CR>5jA

set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set copyindent
set number
set showcmd
set showmatch
set mat=2
set incsearch
let mapleader = ","
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
set ignorecase
set smartcase
"set lazyredraw
colorscheme skittles_berry
set encoding=utf8
set shell=/bin/bash         " sets default shell
let g:netrw_banner=0 " vim default file browser

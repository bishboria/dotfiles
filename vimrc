set nocompatible

filetype plugin indent on
syntax on
set number
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smarttab
set autoindent
set expandtab

" visuals
set t_Co=256

" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" wrapped lines behave normally
nnoremap j gj
nnoremap k gk

let g:lisp_rainbow = 1

" use vundle to manage plugins
set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

" slime for lisp/scheme
Bundle "https://github.com/jpalardy/vim-slime.git"

" Ruby refactoring tool
Bundle "http://github.com/ecomba/vim-ruby-refactoring.git"

" Desert colour scheme
Bundle "desert256.vim"

" This will work once BundleInstall is run
colorscheme desert256

Bundle "https://github.com/mhz/vim-matchit.git"

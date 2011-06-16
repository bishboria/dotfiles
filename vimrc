set nocompatible

set number
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smarttab
set autoindent
set expandtab

" visuals
set t_Co=256

" can create new buffers without having to save first
set hidden

" turn off that infernal beeping.
set vb

" show status menu even if only 1 window
set laststatus=2

" show better command line completion
set wildmenu

" show cursorline to find cursor better
set cursorline

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

" make parens have alternating colours
let g:lisp_rainbow = 1

" use vundle to manage plugins
set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

" slime for lisp/scheme
Bundle "https://github.com/jpalardy/vim-slime.git"

" extended % matching
Bundle "https://github.com/mhz/vim-matchit.git"

" Ruby refactoring tool
Bundle "http://github.com/ecomba/vim-ruby-refactoring.git"

" Desert colour scheme
Bundle "desert256.vim"

" Git wrapper in vim
Bundle "https://github.com/tpope/vim-fugitive.git"

" Add end keyword in ruby
Bundle "https://github.com/tpope/vim-endwise.git"

" Solarized colour scheme
Bundle "https://github.com/altercation/vim-colors-solarized.git"

" CoffeeScript plugin for syntax highlighting and compiling
Bundle "https://github.com/kchmck/vim-coffee-script.git"

" NerdTree file explorer
Bundle "https://github.com/scrooloose/nerdtree.git"

" VimWiki
Bundle "https://github.com/vim-scripts/vimwiki.git"

" Leave at bottom so I can see what's in use.
syntax enable
let g:solarized_termcolors=256
set background=light
colorscheme solarized
filetype plugin indent on

set nocompatible
syntax on
filetype on
filetype plugin on
filetype indent on

set number
set smarttab
autocmd FileType coq,sh,ruby,haml,eruby,yaml,html,javascript,sass,cucumber,tex set ai ts=2 sw=2 sts=2 expandtab
autocmd FileType haskell,lhaskell set ai ts=4 sw=4 sts=4 expandtab
autocmd FileType python set sw=4 sts=4 expandtab

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

" try to avoid going over 80 chars per line.
set colorcolumn=80

set noswapfile

" wrapped lines behave normally
nnoremap j gj
nnoremap k gk

" make parens have alternating colours
" good for lisp beginners... Don't have much use for it now.
let g:lisp_rainbow = 1

" Leave at bottom so I can see what's in use.
set background=light

let mapleader = ","
let maplocalleader = g:mapleader

" show trailing spaces
set listchars=tab:->,trail:·,extends:>
set list!

colorscheme peachpuff
set guifont=DejaVuSansMono:h16

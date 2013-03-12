set nocompatible
filetype off " required!

" use vundle to manage plugins
set rtp+=~/.dotfiles/vundle.git/
call vundle#rc()

" slime for lisp/scheme
Bundle "https://github.com/jpalardy/vim-slime.git"

" extended % matching
Bundle "https://github.com/tsaleh/vim-matchit.git"

" Git wrapper in vim
Bundle "https://github.com/tpope/vim-fugitive.git"

" Add end keyword in ruby
Bundle "https://github.com/tpope/vim-endwise.git"

" Solarized colour scheme
Bundle "https://github.com/altercation/vim-colors-solarized.git"

" Nerd Commenter
Bundle "https://github.com/vim-scripts/The-NERD-Commenter.git"

" Haskell Template Syntax
Bundle "https://github.com/pbrisbin/html-template-syntax.git"

" Coq
Bundle "https://github.com/jvoorhis/coq.vim.git"

" Idris
Bundle "https://github.com/jhenahan/idris-vim.git"
" End vundle bundles

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
" good for lisp beginners... Don't have much use for it now.
let g:lisp_rainbow = 1

" Leave at bottom so I can see what's in use.
set background=light
colorscheme solarized

let mapleader = ","

" show trailing spaces
set listchars=tab:->,trail:·,extends:>
set list!
"
" Strip trailing whitespace and autocommit on save mapping
map <leader>w :%s/\s\+$//e\|w\|!git add . && git commit -m "."<CR><CR>

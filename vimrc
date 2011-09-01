set nocompatible
filetype off " required!

" use vundle to manage plugins
set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

" slime for lisp/scheme
Bundle "https://github.com/jpalardy/vim-slime.git"

" extended % matching
Bundle "https://github.com/mhz/vim-matchit.git"

" Ruby refactoring tool
Bundle "http://github.com/ecomba/vim-ruby-refactoring.git"

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

" End vundle bundles

syntax on
filetype on
filetype plugin on
filetype indent on

set number
set smarttab
autocmd FileType ruby,haml,eruby,yaml,html,javascript,sass,cucumber set ai sw=2 sts=2 et
autocmd FileType python set sw=4 sts=4 et

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

" Leave at bottom so I can see what's in use.
set background=light
colorscheme solarized

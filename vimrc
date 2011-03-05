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
colorscheme macvim
set lines=56
set columns=179

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

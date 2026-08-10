set nocompatible
syntax on
filetype plugin indent on

set number relativenumber
set tabstop=4 shiftwidth=4 expandtab
set autoindent smartindent
set incsearch hlsearch ignorecase smartcase
set scrolloff=5
set wildmenu
set backspace=indent,eol,start
set laststatus=2
set showcmd

nnoremap <silent> <C-l> :nohlsearch<CR><C-l>
nnoremap <F5> :make<CR>

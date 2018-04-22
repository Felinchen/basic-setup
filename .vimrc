" Use Vim in the 21th Century
set nocompatible
" Encoding
scriptencoding utf-8
set encoding=utf-8
" Tab -> 4 spaces
set tabstop=4 softtabstop=-1 expandtab shiftwidth=0
" Show some whitespace
set listchars=eol:¬,tab:..,trail:_,extends:>,precedes:<,nbsp:~
set list
" Set relative linenumbers for easier naigation
set number relativenumber
" Easier indentation
filetype plugin indent on
" Syntax highlighting
syntax on
" Enable backspace
set backspace=2
" Better search
set ignorecase
set smartcase
" Auto indentation
set autoindent
set smartindent
" Show current line
set cursorline
" faster scrolling
set ttyfast
" Show last two keys pressed
set laststatus=2
" Highlighted search C-L to unhighlight
set hlsearch
nnoremap <C-L> :nohl<CR><C-L>
" Plugins
" --------
" Vim Airline config
let g:airline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = "murmur"
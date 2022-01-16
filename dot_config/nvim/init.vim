"
" options
"
set cursorline
set nobackup
set number

" coding
set smartindent
set list
set listchars=tab:>-,trail:=

" put without overwriting buffer
vnoremap p "_dp

" tab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set fileformat=unix
set fileformats=unix,dos,mac
set ambiwidth=double

" mouse
set mouse-=a

" clipboard
set clipboard+=unnamedplus

"
" Plugins (vim-plug)
"
call plug#begin('~/.local/share/nvim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tomasr/molokai'
call plug#end()

"
" lightline
"
set laststatus=2
set ambiwidth=double
set noshowmode
let g:lightline = {
    \ 'colorscheme': 'molokai',
    \ }

"
" NERDTree
"
let g:NERDTreeShowHidden = 1
map <C-n> :NERDTreeToggle<CR>

"
" colorscheme
"
syntax enable
colorscheme molokai


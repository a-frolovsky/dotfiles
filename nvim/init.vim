scriptencoding utf-8
set encoding=utf-8
set cursorline
set nostartofline
set ruler
set title
set showmode
set showcmd
set showmatch
set nu
set lazyredraw
set scrolloff=5
set ve=block

" Plug
source ~/.config/nvim/plugins.vim

" Leader key
let mapleader      = ' '
let maplocalleader = ' '

" NerdTree
let NERDTreeShowHidden=1
map <Leader>n :NERDTreeToggle<cr>
map <Leader>m :NERDTreeFind<cr>

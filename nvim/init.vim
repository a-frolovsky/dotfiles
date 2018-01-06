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

" Plug
source ~/.config/nvim/plugins.vim

" NerdTree
let NERDTreeShowHidden=1
map <Leader>n :NERDTreeToggle<cr>
map <Leader>m :NERDTreeFind<cr>

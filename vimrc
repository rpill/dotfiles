call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
call plug#end()

set nocompatible
syntax on
colorscheme gruvbox
set background=dark
filetype plugin indent on

set tabstop=2 shiftwidth=2 smarttab
set tw=0 wm=0

set number relativenumber

" enable Normal mode keys in ru layout
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" mappings
nnoremap <C-n> :NERDTreeToggle<CR>

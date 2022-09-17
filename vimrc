call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'jreybert/vimagit'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'sheerun/vim-polyglot'
Plug 'sickill/vim-monokai'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'wikitopian/hardmode'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

set nocompatible
syntax on
filetype plugin indent on

set tabstop=2 shiftwidth=2 smarttab
set tw=0 wm=0

set incsearch hlsearch showmatch
set number relativenumber

" Show unprintable chars
set list
"set listchars=tab:▹\ ,eol:¬
"set listchars=tab:→\ ,eol:¬
"set listchars=tab:\:\ ,eol:¬
set listchars=tab:⁞\ ,eol:¬

set background=dark

" enable Normal mode keys in ru layout
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" hardmode
let g:HardMode_level = 'wannabe'
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" indent-guides
let g:indent_guides_auto_colors = 0
let g:indent_guides_space_guides = 1
let g:indent_guides_enable_on_vim_startup = 1
hi IndentGuidesOdd  guibg=#282a36 ctermbg=235
hi IndentGuidesEven guibg=#383a46 ctermbg=236

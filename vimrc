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
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim'
call plug#end()

set nocompatible
syntax on
colorscheme onedark
set background=dark
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

" enable Normal mode keys in ru layout
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" mappings
map <C-n> :NERDTreeToggle<CR>

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

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

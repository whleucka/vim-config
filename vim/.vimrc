" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Plugins
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
"Plug 'morhetz/gruvbox'
Plug 'ghifarit53/tokyonight-vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': 'yes \| ./install' }

call plug#end()

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

let mapleader = " "

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" Security
set modelines=0

" Show line numbers
set number
set relativenumber

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell
" Don't flash the screen tho
set t_vb=

" Encoding
set encoding=utf-8

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Status bar config
set statusline+=%#warningmsg#

" Formatting
set colorcolumn=80
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set smartindent

let &t_ut=''

" Cursor motion
set scrolloff=6
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim


set guicursor=
set modifiable

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
set mouse=


" Color scheme (terminal)
set t_Co=256
set background=dark

"colorscheme gruvbox
let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 1
colorscheme tokyonight

" Status Bar
let g:lightline = {'colorscheme' : 'tokyonight'}

hi Normal guibg=NONE ctermbg=NONE

" Mappings
map Q <nop>
nnoremap <ESC><ESC> :noh<CR>
nnoremap <leader>w :update!<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>, ^
nnoremap <leader>. $
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 :tablast<CR>
nnoremap <leader>h <C-w>h<CR>
nnoremap <leader>j <C-w>j<CR>
nnoremap <leader>k <C-w>k<CR>
nnoremap <leader>l <C-w>l<CR>
nnoremap <leader>= :vs<CR>
nnoremap <leader>- :sp<CR>
nnoremap <C-p> :FZF<CR>
nnoremap H :tabprev<CR>
nnoremap L :tabnext<CR>
nnoremap j gj
nnoremap k gk
imap jk <ESC>
imap kj <ESC>

vnoremap < <gv
xnoremap < <gv
vnoremap > >gv
xnoremap > >gv

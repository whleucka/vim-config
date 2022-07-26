" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Plugins
call plug#begin()

Plug 'tpope/vim-sensible'
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

set nowrap

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
set tabstop=2
set shiftwidth=2
set softtabstop=2
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
set mouse=a


" Color scheme (terminal)
set t_Co=256
set background=dark

"colorscheme gruvbox
let g:tokyonight_style = 'storm' " available: night, storm
"let g:tokyonight_enable_italic = 1
colorscheme tokyonight

hi Normal guibg=NONE ctermbg=NONE

" Mappings
nnoremap <leader>w :update!<CR>
nnoremap <leader>q :q<CR>
nnoremap <C-p> :FZF<CR>
nnoremap <leader>, :tabprev<CR>
nnoremap <leader>. :tabnext<CR>
nnoremap H ^
nnoremap L $
imap jk <ESC>
imap kj <ESC>
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

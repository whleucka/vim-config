" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Plugins
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'sheerun/vim-polyglot'
"Plug 'morhetz/gruvbox'
Plug 'ghifarit53/tokyonight-vim'
Plug 'junegunn/fzf', { 'do': 'yes \| ./install' }

call plug#end()

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

let mapleader = " "

set nowrap

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

" Formatting
set colorcolumn=80
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

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
nnoremap < :tabprev<CR>
nnoremap > :tabnext<CR>
nnoremap H ^
nnoremap L $
imap jk <ESC>
imap kj <ESC>

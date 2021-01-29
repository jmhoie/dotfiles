"switches from VI-mode to Vim-mode
set nocompatible

"turn on syntax highlighting.
syntax on

"disable the default Vim startup message.
set shortmess+=I

"disables the bell sound effect
set noerrorbells

"show relative line numbers
set relativenumber
"show current line number (instead of 0)
set nu

"only highlights during search, removes highlight after search
set nohlsearch

"always show the status line at the bottom, even if you only have one window open.
set laststatus=2

"can backspace over everything
set backspace=indent,eol,start

"allow hidden buffers
set hidden

"makes search case-insensitive if the search is all lower case, but
"case-sensitive if there is upper-case letters in the search
set ignorecase
set smartcase

"incremental search, i.e. searching while you type instead of waiting till
"after you've pressed enter
set incsearch

"unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

"disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

"enable mouse support
set mouse+=a

"makes the tab equal to 4 spaces
set tabstop=4
set softtabstop=0

"use tabs instead of spaces
set noexpandtab
"set size of an indent to the same size as a tab
set shiftwidth=4
"tries to automatically indent
set smartindent

"no text-wrapping
set nowrap

"no swap- and backup-files
set noswapfile
set nobackup
"saves files and directories so that changes can be un-done. This is instead
"of swap- and backup-files
set undodir=~/.vim/undodir
set undofile

"starts scrolling the screen when the cursor is 8 away from the top or bottom
set scrolloff=8

"creates a vertical line at 80 characters, this is the standard size for
"wrapping
set colorcolumn=80
highlight ColorColumn ctermbg=233

"underlines the current line
set cursorline

filetype on


"####### PLUGINS #######
call plug#begin('~/.vim/plugged')

Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'preservim/nerdtree'

"colorschemes
Plug 'habamax/vim-colors-lessthan'
Plug 'pineapplegiant/spaceduck'

"coconut-oil
Plug 'gruvbox-community/gruvbox'

call plug#end()

"colorscheme
set background=dark
set termguicolors
colorscheme gruvbox

"##### plugin helpers #####

if executable ('rg')
	let g:rg_derive_root='true'
endif

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

"##### BINDS #####
let mapleader = " "
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


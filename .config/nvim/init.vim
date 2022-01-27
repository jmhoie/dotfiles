syntax on
filetype on
set guicursor=
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set colorcolumn=80
set cursorline
set shortmess+=I
set laststatus=2
set backspace=indent,eol,start
set mouse+=a
nmap Q <Nop>

"####### PLUGINS #######
call plug#begin('~/.vim/plugged')

Plug 'mbbill/undotree'

" nice popup menu
Plug 'nvim-lua/popup.nvim'
" commonly used functions for plugins
Plug 'nvim-lua/plenary.nvim'
" file navigation
Plug 'nvim-telescope/telescope.nvim'
" creates syntax trees
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" coconut-oil
Plug 'ThePrimeagen/harpoon'

" manual pages in vim
Plug 'vim-utils/vim-man'
" search through files
Plug 'jremmen/vim-ripgrep'
Plug 'vim-airline/vim-airline'
" git integration
Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-surround'
" language servers primarily for code suggestion/completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" language plugin for Rust
Plug 'rust-lang/rust.vim'
" formatting plugin for Go
Plug 'darrikonn/vim-gofmt'

"colorscheme
Plug 'sainnhe/everforest'

call plug#end()

"colorscheme
let g:everforest_background="hard"
set termguicolors
set background=dark
colorscheme everforest
"transparent terminal
"highlight Normal guibg=none

"##### plugin helpers #####
if executable ('rg')
	let g:rg_derive_root='true'
endif

" settings for the netrw browser (invoked by the `:Ex` command)
let g:netrw_browse_split = 0
let g:netrw_banner = 0
let g:netrw_winsize = 25

"##### REMAPS #####
let mapleader = " "

" copy and paste to/from clipboard
vnoremap <c-c> "+y<CR>
nnoremap <c-v> "+p<CR>

" move highlighted block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Window navigation
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
" shows the last changes made, can also undo them
nnoremap <leader>u :UndotreeShow<CR>

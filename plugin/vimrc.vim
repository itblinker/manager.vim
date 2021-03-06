"{{{ source guard
if exists('g:loaded_manager_vimrc')
    finish
endif
let g:loaded_manager_vimrc = 1
"}}}

"{{{ settings
syntax enable
filetype plugin indent on

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
set wildignore+=*\\.git\\*,*\\.hg\\*,*\\.svn\\*

set encoding=utf-8
set title

au CursorHold * checktime
au FocusLost * silent redraw!

" should open copen/lopen on bottom
abbreviate copen botright copen
abbreviate lopen botright lopen

set ttyfast
set clipboard^=unnamed,unnamedplus

set background=dark
if has('gui_running')
    colorscheme elflord
else

    colorscheme ron
endif

set hidden
set autoread
set autowrite
set nobackup
set nowb
set noswapfile

set linebreak
set number
"set relativenumber

set ttimeoutlen=10

set autoindent
set copyindent

set nostartofline
set nowrap
set backspace=indent,eol,start

set mouse=

set eol

set splitright
set splitbelow

set showcmd
set laststatus=2
set wildmenu
set wildmode=list:full

set visualbell
set noerrorbells

set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase

set history=1000
set undolevels=1000

set foldmethod=marker
runtime! ftplugin/man.vim
"}}}
"{{{ mappings
execute 'let g:mapleader = '','''

inoremap jk <esc>
nnoremap <leader><space> :nohlsearch<CR>

nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
nnoremap <c-x> <c-w>x

noremap <silent> <left> :3wincmd <<cr>
noremap <silent> <right> :3wincmd ><cr>
noremap <silent> <down> :3wincmd +<cr>
noremap <silent> <up> :3wincmd -<cr>

nnoremap td :tabclose <CR>

vnoremap < <gv
vnoremap > >gv

nnoremap <leader>\| :vsplit<CR>
nnoremap <leader>_ :split<CR>

vnoremap <leader>G :call manager#utils#GrepFromPath(manager#utils#GetFromVisualSelection(), getcwd())<CR>
vnoremap <leader>o :call manager#plugin#unite#FindFile(manager#utils#GetFromVisualSelection())<CR>

set pastetoggle=<F2>

call manager#ConfigureVim()

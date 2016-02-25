function manager#vim#Settings()
    exec 'syntax enable'
    exec 'filetype plugin indent on'

    exec 'set wildignore+=*/.git/*,*/.hg/*,*/.svn/*'
    exec 'set wildignore+=*\\.git\\*,*\\.hg\\*,*\\.svn\\*'

    exec 'set encoding=utf-8'
    exec 'set title'

    exec 'au CursorHold * checktime'
    exec 'au FocusLost * silent redraw!'

    exec 'set ttyfast'
    exec 'set clipboard^=unnamed,unnamedplus'

    exec 'set background=dark'
    exec 'colorscheme ron'

    exec 'set hidden'
    exec 'set autoread'
    exec 'set autowrite'
    exec 'set nobackup'
    exec 'set nowb'
    exec 'set noswapfile'

    exec 'set linebreak'
    exec 'set number'
    exec 'set relativenumber'

    exec 'set ttimeoutlen=10'

    exec 'set autoindent'
    exec 'set copyindent'

    exec 'set nostartofline'
    exec 'set nowrap'
    exec 'set backspace=indent,eol,start'

    exec 'set mouse='

    exec 'set eol'

    exec 'set splitright'
    exec 'set splitbelow'

    exec 'set showcmd'
    exec 'set laststatus=2'
    exec 'set wildmenu'
    exec 'set wildmode=list:full'

    exec 'set visualbell'
    exec 'set noerrorbells'

    exec 'set showmatch'
    exec 'set incsearch'
    exec 'set hlsearch'
    exec 'set ignorecase'
    exec 'set smartcase'

    exec 'set history=1000'
    exec 'set undolevels=1000'

    exec 'set foldmethod=marker'
endfunction

function manager#vim#Mappings()
    let g:mapleader = ','

    execute 'inoremap jk <esc>'
    execute 'nnoremap <leader><space> :nohlsearch<CR>'

    execute 'nnoremap <c-k> <c-w>k'
    execute 'nnoremap <c-l> <c-w>l'
    execute 'nnoremap <c-h> <c-w>h'
    execute 'nnoremap <c-x> <c-w>x'

    execute 'noremap <silent> <left> :3wincmd <<cr>'
    execute 'noremap <silent> <right> :3wincmd ><cr>'
    execute 'noremap <silent> <down> :3wincmd +<cr>'
    execute 'noremap <silent> <up> :3wincmd -<cr>'

    execute 'nnoremap td :tabclose <CR>'

    execute 'set pastetoggle=<F2>'

    execute 'silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)'
endfunction

function manager#vim#PathsConfiguration()
    let g:manager_cwd_settings = getcwd().'/.store.vim'
endfunction
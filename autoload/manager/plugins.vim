function manager#plugins#Setup()
    call plugins#ag#Setup()
    call plugins#airline#Setup()
    call plugins#bufferline#Setup()
    call plugins#cpp_enhanced_highlight#Setup()
    call plugins#ctagger#Setup()
    call plugins#ctrlp#Setup()
    call plugins#ctrlp_tjump#Setup()
    call plugins#easy_git#Setup()
    call plugins#editgq#Setup()
    call plugins#filesearch#Setup()
    call plugins#localvimrc#Setup()
    call plugins#maximizer#Setup()
    call plugins#nerdtree#Setup()
    call plugins#qfenter#Setup()
    call plugins#startify#Setup()
    call plugins#taboo#Setup()
    call plugins#unite#Setup()
    call plugins#vim_bookmarks#Setup()
    call plugins#vimwiki#Setup()
    call plugins#yankring#Setup()
endfunction


function manager#plugins#SetupMapping()
    execute 'let g:mapleader ='.string(',')

    execute 'inoremap jk <esc>'
    execute 'nnoremap <leader><space> :nohlsearch<CR>'

    execute 'nnoremap <silent> <leader>U :GundoShow<CR>'
    execute 'nnoremap <silent> <leader>N :NERDTreeCWD<CR>'
    execute 'nnoremap <silent> <leader>P :NERDTreeFind<CR>'
    execute 'nnoremap <silent> <leader>M :Unite -smartcase -start-insert -wrap -no-split<CR>'
    execute 'nnoremap <silent> <leader>R :UniteResume -smartcase -wrap -no-split<CR>'
    execute 'nnoremap <silent> <leader>K :Unite -smartcase -start-insert -wrap -no-split spell_suggest<CR>'
    execute 'nnoremap <silent> <leader>G :Unite -smartcase -start-insert -wrap -no-split<CR>git<Esc>'
    execute 'nnoremap <silent> <leader>S :Unite -smartcase -start-insert -wrap -no-split<CR>svn<Esc>'

    execute 'nnoremap <leader>V :EditVifm '.expand("%:p:h").' '.getcwd().'<CR>'

    execute 'nnoremap <silent> <leader>s :Unite -smartcase -start-insert -wrap -no-split file_rec/async:!<CR>'
    execute 'nnoremap <silent> <leader>o :Unite -smartcase -wrap -no-split buffer<CR>'
    execute 'nnoremap <silent> <leader>b :Unite -smartcase -wrap -no-split bookmark<CR>'
    execute 'nnoremap <silent> <leader>i :Unite -smartcase -wrap -no-split tag<CR>'
    execute 'nnoremap <silent> <leader>w :Unite -smartcase -wrap -no-split window<CR>'
    execute 'nnoremap <silent> <leader>t :Unite -smartcase -wrap -no-split tab<CR>'
    execute 'nnoremap <silent> <leader>p :Unite -smartcase -wrap -no-split jump<CR>'
    execute 'nnoremap <silent> <leader>e :Unite -smartcase -wrap -no-split change<CR>'
    execute 'nnoremap <silent> <leader>c :Unite -smartcase -wrap -no-split history/command<CR>'
    execute 'nnoremap <silent> <leader>y :Unite -smartcase -wrap -no-split history/yank<CR>'

    execute 'nnoremap <silent> <leader>/ :call NERDComment(0,"toggle")<CR>'
    execute 'vnoremap <silent> <leader>/ :call NERDComment(0,"toggle")<CR>'

    execute 'nnoremap <silent><leader>z :MaximizerToggle<CR>'
    execute 'vnoremap <silent><leader>z :MaximizerToggle<CR>gv'
    execute 'inoremap <silent><leader>z <C-o>:MaximizerToggle<CR>'

    execute 'map <leader>f <Plug>(easymotion-f)'
    execute 'map <leader>F <Plug>(easymotion-F)'
    execute 'map <leader>j <Plug>(easymotion-j)'
    execute 'map <leader>k <Plug>(easymotion-k)'

    execute 'nnoremap <c-j> <c-w>j'
    execute 'nnoremap <c-k> <c-w>k'
    execute 'nnoremap <c-l> <c-w>l'
    execute 'nnoremap <c-h> <c-w>h'
    execute 'nnoremap <c-x> <c-w>x'

    execute 'nnoremap <silent> <left> :3wincmd <<cr>'
    execute 'nnoremap <silent> <right> :3wincmd ><cr>'
    execute 'nnoremap <silent> <down> :3wincmd +<cr>'
    execute 'nnoremap <silent> <up> :3wincmd -<cr>'

    execute 'nnoremap td :tabclose <CR>'

    execute 'set pastetoggle=<F2>'

    execute 'silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)'

    execute 'nnoremap <c-]> :CtrlPtjump<cr>'
    execute 'vnoremap <c-]> :CtrlPtjumpVisual<cr>'

    execute 'nmap <F8>:   call TurnOnCtagsCppFeature()<CR>'
    execute 'nmap tc<F8>: call GenerateCtagsForApplicationDirectories()<CR>'
    execute 'nmap tt<F8>: call GenerateCtagsForThirdPartyDirectories()<CR>'
    execute 'nmap ta<F8>: call GenerateCtagsForWholeCodebase()<CR>'
endfunction

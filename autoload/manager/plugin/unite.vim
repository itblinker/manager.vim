function manager#plugin#unite#Find()
    let g:unite_source_find_default_expr = '-iname '
endfunction

function manager#plugin#unite#Grep()
    let g:unite_source_grep_default_opts = '-inH --exclude-dir=.git --exclude-dir=.svn --exclude-dir=.bzr'

    if executable('ag')
        let g:unite_source_grep_command = 'ag'
        let g:unite_source_grep_default_opts =
                    \ '-i --vimgrep --hidden --ignore ' .
                    \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
        let g:unite_source_grep_recursive_opt = ''
    endif
endfunction

function manager#plugin#unite#Yank()
    let g:unite_source_history_yank_enable = 1
    let g:unite_source_yank_history_save_clipboard = 1
endfunction

function manager#plugin#unite#Paths()
    let g:unite_data_directory = g:manager_db_dir.'/unite'
endfunction

function manager#plugin#unite#Cache()
    let g:unite_source_rec_min_cache_files = 100
    let g:unite_source_rec_max_cache_files = 0
endfunction

function manager#plugin#unite#Matching()
    exec "call unite#filters#matcher_default#use(['matcher_glob'])"
    let g:unite_enable_auto_select = 0
    let g:unite_prompt = '>> '
endfunction

function manager#plugin#unite#Settings()
    call manager#plugin#unite#Matching()
    call manager#plugin#unite#Paths()
    call manager#plugin#unite#Cache()
    call manager#plugin#unite#Find()
    call manager#plugin#unite#Grep()
    call manager#plugin#unite#Yank()
endfunction

function manager#plugin#unite#Mappings()
    let g:unite_no_default_keymappings = 1

    execute 'nnoremap <leader>U :Unite -smartcase -start-insert -wipe<CR>'
    execute 'nnoremap <leader>R :UniteResume -smartcase<CR>'

    execute 'nnoremap <leader>w :Unite -smartcase -wipe window<CR>'
    execute 'nnoremap <leader>t :Unite -smartcaset -wipe tab<CR>'

    execute 'nnoremap <leader>s :Unite -smartcase -start-insert -wipe file_rec/async:!<CR>'
    execute 'nnoremap <leader>b :Unite -smartcase -wipe buffer_tab:-<CR>'
    execute 'nnoremap <leader>b :Unite -smartcase -wipe buffer_tab:-<CR>'

    execute 'nnoremap <leader>p :Unite -smartcase -wipe jump<CR>'
    execute 'nnoremap <leader>e :Unite -smartcase -wipe change<CR>'

    execute 'nnoremap <leader>c :Unite -smartcase -start-insert -wipe history/command<CR>'
    execute 'nnoremap <leader>y :Unite -smartcase -start-insert -wipe history/yank<CR>'
endfunction

function manager#plugin#unite#Find()
    let g:unite_source_find_default_expr = '-type f -iname ''*'
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
    call manager#plugin#unite#Yank()
endfunction

function manager#plugin#unite#Mappings()
    let g:unite_no_default_keymappings = 1

    execute 'nnoremap <leader>u :Unite -smartcase -start-insert <CR>'
    execute 'nnoremap <leader>r :UniteResume -smartcase<CR>'

    execute 'nnoremap <leader>w :Unite -smartcase window<CR>'
    execute 'nnoremap <leader>t :Unite -smartcaset tab<CR>'

    execute 'nnoremap <leader>s :Unite -smartcase -start-insert file_rec/async:!<CR>'
    execute 'nnoremap <leader>o :Unite -smartcase buffer_tab:-<CR>'

    execute 'nnoremap <leader>b :Unite -smartcase bookmark<CR>'
    execute 'nnoremap <leader>p :Unite -smartcase jump<CR>'
    execute 'nnoremap <leader>e :Unite -smartcase change<CR>'

    execute 'nnoremap <leader>c :Unite -smartcase -start-insert history/command<CR>'
    execute 'nnoremap <leader>y :Unite -smartcase -start-insert history/yank<CR>'
endfunction

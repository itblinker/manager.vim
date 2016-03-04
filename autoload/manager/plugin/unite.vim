function manager#plugin#unite#Settings()
    exec "call unite#filters#matcher_default#use(['matcher_fuzzy'])"

    let g:unite_data_directory = g:manager_db_dir.'/unite'
    let g:unite_source_rec_min_cache_files = 0
    let g:unite_source_rec_max_cache_files = 0
    let g:unite_source_history_yank_enable = 1
    let g:unite_source_yank_history_save_clipboard = 1

    let g:unite_enable_auto_select = 0
    let g:unite_no_default_keymappings = 1
    let g:unite_prompt = '>> '
endfunction

function manager#plugin#unite#Mappings()
    execute 'nnoremap <leader>l :Unite -smartcase -start-insert -no-split <CR>'
    execute 'nnoremap <leader>r :UniteResume -smartcase -no-split<CR>'

    execute 'nnoremap <leader>w :Unite -smartcase -no-split window<CR>'
    execute 'nnoremap <leader>t :Unite -smartcase -no-split tab<CR>'

    execute 'nnoremap <leader>s :Unite -smartcase -start-insert -no-split file_rec/async:!<CR>'
    execute 'nnoremap <leader>o :Unite -smartcase -no-split buffer_tab:-<CR>'

    execute 'nnoremap <leader>b :Unite -smartcase -no-split bookmark<CR>'
    execute 'nnoremap <leader>p :Unite -smartcase -no-split jump<CR>'
    execute 'nnoremap <leader>e :Unite -smartcase -no-split change<CR>'

    execute 'nnoremap <leader>i :Unite -smartcase -start-insert -no-split tag<CR>'
    execute 'nnoremap <leader>c :Unite -smartcase -start-insert -no-split history/command<CR>'
    execute 'nnoremap <leader>y :Unite -smartcase -start-insert -no-split history/yank<CR>'
endfunction

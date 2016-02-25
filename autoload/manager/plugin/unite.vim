function manager#plugin#unite#Settings()
    exec "call unite#filters#matcher_default#use(['matcher_fuzzy'])"

    let g:unite_data_directory = g:manager_cwd_settings.'/unite'

    let g:unite_enable_auto_select = 0

    let g:unite_source_rec_min_cache_files = 0
    let g:unite_source_rec_max_cache_files = 0

    let g:unite_source_history_yank_enable = 1
    let g:unite_source_yank_history_save_clipboard = 1
    let g:unite_prompt = '>> '
endfunction

function manager#plugin#unite#Mappings()
    execute 'nnoremap <leader>M :Unite -smartcase -start-insert -wrap -no-split<CR>'
    execute 'nnoremap <leader>R :UniteResume -smartcase -wrap -no-split<CR>'
    execute 'nnoremap <leader>K :Unite -smartcase -start-insert -wrap -no-split spell_suggest<CR>'
    execute 'nnoremap <leader>G :Unite -smartcase -start-insert -wrap -no-split<CR>git<Esc>'
    execute 'nnoremap <leader>S :Unite -smartcase -start-insert -wrap -no-split<CR>svn<Esc>'

    execute 'nnoremap <leader>s :Unite -smartcase -start-insert -wrap -no-split file_rec/async:!<CR>'
    execute 'nnoremap <leader>o :Unite -smartcase -wrap -no-split buffer<CR>'
    execute 'nnoremap <leader>b :Unite -smartcase -wrap -no-split bookmark<CR>'
    execute 'nnoremap <leader>i :Unite -smartcase -wrap -no-split tag<CR>'
    execute 'nnoremap <leader>w :Unite -smartcase -wrap -no-split window<CR>'
    execute 'nnoremap <leader>t :Unite -smartcase -wrap -no-split tab<CR>'
    execute 'nnoremap <leader>p :Unite -smartcase -wrap -no-split jump<CR>'
    execute 'nnoremap <leader>e :Unite -smartcase -wrap -no-split change<CR>'
    execute 'nnoremap <leader>c :Unite -smartcase -wrap -no-split history/command<CR>'
    execute 'nnoremap <leader>y :Unite -smartcase -wrap -no-split history/yank<CR>'
endfunction

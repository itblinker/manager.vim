function manager#plugin#unite#Settings()
    exec "call unite#filters#matcher_default#use(['matcher_fuzzy'])"

    let g:unite_data_directory = g:__CwdStoreDirectory."/unite"

    let g:unite_source_history_yank_enable = 1
    let g:unite_source_yank_history_save_clipboard = 1
    let g:unite_prompt = '» '
endfunction

function manager#plugin#unite#Mappings()
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
endfunction

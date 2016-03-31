function manager#plugin#unite#Find()
    let g:unite_source_find_default_expr = '-iname '
endfunction


function manager#plugin#unite#Grep()
    let g:unite_source_grep_default_opts = '-inH --exclude-dir=.git --exclude-dir=.svn --exclude-dir=.bzr'
    let g:unite_source_grep_search_word_highlight = 'None'

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
    call unite#filters#matcher_default#use(['matcher_glob'])
    call unite#filters#sorter_default#use(['sorter_rank'])
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


function manager#plugin#unite#GetPreviewCommonSubSettings()
    return  ' -winheight=20 -previewheight=15'
endfunction


function manager#plugin#unite#GrepByUnite()
    execute 'Unite -smartcase '.manager#plugin#unite#GetPreviewCommonSubSettings().' -buffer-name=''grep'' grep:.::'.expand('<cword>')
endfunction


function manager#plugin#unite#FindByUnite()
    execute 'Unite -smartcase '.manager#plugin#unite#GetPreviewCommonSubSettings().' -buffer-name=''find'' find:./:-name\ *'.manager#utils#GetBaseFilenameForFindSimiliarFunction().'*.*'
endfunction

function manager#plugin#unite#Mappings()
    let g:unite_no_default_keymappings = 1

    nnoremap <leader>u :Unite -smartcase -start-insert -wipe<CR>
    nnoremap <leader>ru :UniteResume -smartcase<CR>
    nnoremap <leader>rg :UniteResume 'grep'<CR>
    nnoremap <leader>rf :UniteResume 'find'<CR>

    nnoremap <leader>w :Unite -smartcase -wipe window<CR>
    nnoremap <leader>t :Unite -smartcase -wipe tab<CR>

    nnoremap <leader>sa :Unite -smartcase -start-insert -wipe file_rec/async:!<CR>
    nnoremap <leader>sm :Unite -smartcase -start-insert -wipe file_mru<CR>


    nnoremap <leader>b  :Unite -smartcase -start-insert -wipe buffer_tab:-<CR>
    nnoremap <leader>o  :Unite -smartcase -start-insert -wipe buffer:-<CR>

    nnoremap <leader>p :Unite -smartcase -wipe jump<CR>
    nnoremap <leader>e :Unite -smartcase -wipe change<CR>
    nnoremap <leader>mm :Unite -smartcase -wipe mark<CR>
    nnoremap <leader>mb :Unite -smartcase -wipe vim_bookmarks<CR>

    nnoremap <leader>c :Unite -smartcase -wipe history/command<CR>
    nnoremap <leader>y :Unite -smartcase -wipe history/yank<CR>

    execute 'nnoremap <leader>ss :call manager#plugin#unite#FindByUnite()<CR>'
    execute 'nnoremap <leader>GW :call manager#plugin#unite#GrepByUnite()<CR>'
endfunction


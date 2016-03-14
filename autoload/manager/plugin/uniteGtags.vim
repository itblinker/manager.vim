function s:isCursonOnWord()
    if(len(expand('<cword>')) > 2)
        return 1
    else
        return 0
    endif
endfunction


function manager#plugin#uniteGtags#FollowTagOrForwardBuffer()
    if(s:isCursonOnWord())
        execute 'Unite '.manager#plugin#unite#GetPreviewCommonSubSettings().' -immediately gtags/def'
    else
        execute 'BufSurfForward'
    endif
endfunction


function manager#plugin#uniteGtags#Settings()
    let g:unite_source_gtags_project_config = {
                \ '_': { 'treelize': 1, 'uniteSource__Gtags_LineNr': 0, 'uniteSource__Gtags_Path': 1 }
                \ }
endfunction


function manager#plugin#uniteGtags#Mappings()
   execute 'nnoremap <C-]> :call manager#plugin#uniteGtags#FollowTagOrForwardBuffer()<CR>'
   execute 'nnoremap <C-t> :BufSurfBack<CR>'

   execute 'nnoremap <leader>gr :Unite '.manager#plugin#unite#GetPreviewCommonSubSettings().' gtags/ref<CR>'
   execute 'nnoremap <leader>gc :Unite '.manager#plugin#unite#GetPreviewCommonSubSettings().' gtags/context<CR>'
   execute 'nnoremap <leader>gg :Unite '.manager#plugin#unite#GetPreviewCommonSubSettings().' gtags/grep:<CR>'
endfunction



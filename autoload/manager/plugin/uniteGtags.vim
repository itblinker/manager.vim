function manager#plugin#uniteGtags#Settings()
    let g:unite_source_gtags_project_config = {
                \ '_': { 'treelize': 0, 'uniteSource__Gtags_LineNr': 0, 'uniteSource__Gtags_Path': 1 }
                \ }
endfunction

function manager#plugin#uniteGtags#Mappings()
   execute 'nnoremap <C-]> :Unite '.manager#plugin#unite#GetPreviewCommonSubSettings().' -immediately gtags/def<CR>'
   execute 'nnoremap <leader>gr  :Unite '.manager#plugin#unite#GetPreviewCommonSubSettings().' gtags/ref<CR>'
   execute 'nnoremap <leader>gc  :Unite '.manager#plugin#unite#GetPreviewCommonSubSettings().' gtags/context<CR>'
   execute 'nnoremap <leader>gG :Unite '.manager#plugin#unite#GetPreviewCommonSubSettings().' gtags/grep:<CR>'
endfunction

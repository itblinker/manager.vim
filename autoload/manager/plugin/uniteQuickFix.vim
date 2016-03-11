function manager#plugin#uniteQuickFix#Settings()
endfunction

function manager#plugin#uniteQuickFix#Mappings()
    execute 'nnoremap <leader>q :Unite -smartcase '.manager#plugin#unite#GetPreviewCommonSubSettings().' quickfix<CR>'
    execute 'nnoremap <leader>l :Unite -smartcase '.manager#plugin#unite#GetPreviewCommonSubSettings().' location_list<CR>'
endfunction

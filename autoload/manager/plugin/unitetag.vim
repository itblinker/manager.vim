function manager#plugin#unitetag#Settings()
    let g:unite_source_tag_show_location = 0

    let g:unite_source_tag_max_name_length = 50
    let g:unite_source_tag_max_fname_length = 50
endfunction

function manager#plugin#unitetag#Mappings()
   execute 'nnoremap <C-]> :UniteWithCursorWord -immediately tag<CR>'
   execute 'nnoremap <C-D> :echo ''dupa'' <CR>'
endfunction




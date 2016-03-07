function manager#plugin#uniteTags#Settings()
    let g:unite_source_tag_show_location = 0

    let g:unite_source_tag_max_name_length = 50
    let g:unite_source_tag_max_fname_length = 100
endfunction

function manager#plugin#uniteTags#Mappings()
   execute 'nnoremap <C-]> :UniteWithCursorWord -immediately tag'
endfunction

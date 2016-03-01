function manager#plugin#uniteTags#Settings()
    let g:unite_source_tag_show_location = 0

    let g:unite_source_tag_max_name_length = 50
    let g:unite_source_tag_max_fname_length = 50
endfunction

function manager#plugin#uniteTags#Mappings()
   execute 'nnoremap <C-]> :call manager#plugin#uniteTags#LaunchProperTags()<CR>'
endfunction

function manager#plugin#uniteTags#LaunchProperTags()
    if filereadable(g:file_GPATH) &&
                \ filereadable(g:file_GTAGS) &&
                \ filereadable(g:file_GRTAGS)
        execute 'Unite -immediately gtags/def'
    else
        execute 'UniteWithCursorWord -immediately tag'
    endif
endfunction

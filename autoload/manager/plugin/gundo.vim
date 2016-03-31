function manager#plugin#gundo#Settings()
    let g:gundo_width = 70
    let g:gundo_preview_height = 30
endfunction

function manager#plugin#gundo#Mappings()
    nnoremap <silent> <leader>U :GundoShow<CR>
endfunction

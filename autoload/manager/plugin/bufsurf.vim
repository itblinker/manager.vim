function manager#plugin#bufsurf#Settings()
endfunction

function manager#plugin#bufsurf#Mappings()
    execute 'nnoremap <leader>< :BufSurfBack<CR>'
    execute 'nnoremap <leader>> :BufSurfForward<CR>'
endfunction

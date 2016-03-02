function manager#plugin#gundo#Settings()

endfunction

function manager#plugin#gundo#Mappings()
    call SafeMapLeader('nnoremap', 'U', ':GundoShow<CR>')
    "execute 'nnoremap <silent> <leader>U :GundoShow<CR>'
endfunction

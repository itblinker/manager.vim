function manager#plugin#vifm#Settings()
endfunction

function manager#plugin#vifm#Mappings()
    execute 'nnoremap <leader>V :execute ''EditVifm ''.expand("%:p:h").'' ''.getcwd()<CR>'
endfunction

function manager#plugin#nerdcomment#Settings()
endfunction

function manager#plugin#nerdcomment#Mappings()
    execute 'nnoremap <silent> <leader>/ :call NERDComment(0,"toggle")<CR>'
    execute 'vnoremap <silent> <leader>/ :call NERDComment(0,"toggle")<CR>'
endfunction

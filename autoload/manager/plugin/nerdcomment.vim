function manager#plugin#nerdcomment#Settings()
endfunction

function manager#plugin#nerdcomment#Mappings()
    nnoremap <silent> <leader>/ :call NERDComment(0,"toggle")<CR>
    vnoremap <silent> <leader>/ :call NERDComment(0,"toggle")<CR>
endfunction

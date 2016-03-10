function manager#plugin#uniteQuickFix#Settings()
endfunction

function manager#plugin#uniteQuickFix#Mappings()
    execute 'nnoremap <leader>q :Unite -smartcase -auto-preview -previewheight=20 quickfix<CR>'
    execute 'nnoremap <leader>l :Unite -smartcase -auto-preview -previewheight=20 location_list<CR>'
endfunction

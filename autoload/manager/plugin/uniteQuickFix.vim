function manager#plugin#uniteQuickFix#Settings()
endfunction

function manager#plugin#uniteQuickFix#Mappings()
    execute 'nnoremap <leader>q :Unite -smartcase -wrap -no-split -vertical -vertical-preview quickfix<CR>'
    execute 'nnoremap <leader>l :Unite -smartcase -wrap -no-split -vertical -vertical-preview location_list<CR>'
endfunction

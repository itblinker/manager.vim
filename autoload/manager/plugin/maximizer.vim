function manager#plugin#maximizer#Settings()
    let g:maximizer_set_default_mapping = 0
endfunction

function manager#plugin#maximizer#Mappings()
    execute 'nnoremap <silent><leader>z :MaximizerToggle<CR>'
    execute 'vnoremap <silent><leader>z :MaximizerToggle<CR>gv'
    execute 'inoremap <silent><leader>z <C-o>:MaximizerToggle<CR>'
endfunction

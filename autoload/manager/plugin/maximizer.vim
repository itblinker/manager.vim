function manager#plugin#maximizer#Settings()
    let g:maximizer_set_default_mapping = 0
endfunction

function manager#plugin#maximizer#Mappings()
    nnoremap <silent><leader>z :MaximizerToggle<CR>
    noremap <silent><leader>z :MaximizerToggle<CR>gv
    noremap <silent><leader>z <C-o>:MaximizerToggle<CR>
endfunction

function s:settings()
    let g:maximizer_set_default_mapping = 0
endfunction

function s:mappings()
    nnoremap <silent><leader>z :MaximizerToggle<CR>
    noremap <silent><leader>z :MaximizerToggle<CR>gv
    noremap <silent><leader>z <C-o>:MaximizerToggle<CR>
endfunction

function manager#plugin#maximizer#Setup()
    call s:settings()
    call s:mappings()
endfunction



function manager#plugin#nerdtree#Settings()
    let g:NERDTreeHighlightCursorline = 1
    let g:NERDTreeBookmarksFile = "./.cache/nerdtree-bookmarks.vim"
    let g:NERDTreeShowBookmarks = 1
endfunction

function manager#plugin#nerdtree#Mappings()
    execute 'nnoremap <silent> <leader>N :NERDTreeCWD<CR>'
    execute 'nnoremap <silent> <leader>P :NERDTreeFind<CR>'
endfunction

function manager#plugin#nerdtree#Settings()
    let g:NERDTreeHighlightCursorline = 1
    let g:NERDTreeBookmarksFile = "./.cache/nerdtree-bookmarks.vim"
    let g:NERDTreeShowBookmarks = 1
    let g:NERDTreeQuitOnOpen = 1
endfunction

function manager#plugin#nerdtree#Mappings()
    nnoremap <leader>N :NERDTreeCWD<CR>'
    nnoremap <leader>T :NERDTreeFind<CR>'

    let g:NERDTreeMapOpenSplit='s'
    let g:NERDTreeMapOpenVSplit='S'
endfunction

function manager#plugin#nerdtree#QuitToggle()
    if(g:NERDTreeQuitOnOpen)
        let g:NERDTreeQuitOnOpen = 0
    else
        let g:NERDTreeQuitOnOpen = 1
    endif
endfunction

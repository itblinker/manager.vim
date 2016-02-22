function plugins#airline#Setup()
    "let g:airline_theme='base16_summerfruit'
    "{{{ tabs
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#show_buffer = 1	"number of buffers per tab
    let g:airline#extensions#tabline#fnamemod = ':t'
    let g:airline#extensions#tabline#show_tab_nr = 0	"disable tab number
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    "}}}
    "{{{ branches?
    let g:airline#extensions#branch#enabled = 1
    "}}}
    "{{{ quickfix && location list naming
    let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
    let g:airline#extensions#quickfix#location_text = 'LocationList'
    "}}}
    "{{{ bufferline
    let g:airline#extensions#bufferline#enabled = 1
    let g:airline#extensions#bufferline#overwrite_variables = 1
    "}}}
endfunction


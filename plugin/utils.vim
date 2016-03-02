"{{{ source guard
if exists('g:loaded_manager_constants')
    finish
endif
let g:loaded_manager_constants = 1
"}}}

let g:file_GPATH = getcwd().'/GPATH'
let g:file_GRTAGS = getcwd().'/GRTAGS'
let g:file_GTAGS = getcwd().'/GTAGS'

function! SafeMapLeader(p_mode, p_shortcuts, p_what)
    let l:mappedChecker = mapcheck(g:mapleader.a:p_shortcuts, a:p_mode[0])

    if(l:mappedChecker != '')
        echo 'mapping: '.g:mapleader.a:p_shortcuts.' will not be refused, because it''s already mapped to '.l:mappedChecker
    else
        execute a:p_mode.' '.a:p_shortcuts.' '.a:p_what
    endif
endfunction


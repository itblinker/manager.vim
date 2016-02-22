function plugins#startify#Setup()
    let g:startify_list_order = ['sessions', 'files']

    let g:startify_session_dir = g:__CwdSession
    let g:startify_session_delete_buffers = 1

    let g:startify_change_to_dir = 0    "don't mess pwd
    let g:startify_relative_path = 1
endfunction

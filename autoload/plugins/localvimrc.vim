function plugins#localvimrc#Setup()
    let g:localvimrc_file = ".lvimrc"
    let g:localvimrc_event = ["VimEnter"]

    let g:localvimrc_persistent = 2
    let g:localvimrc_sandbox = 0

    "let g:localvimrc_file_dir  = "./"
endfunction

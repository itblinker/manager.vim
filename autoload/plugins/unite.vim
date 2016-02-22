function plugins#unite#Setup()
    exec "call unite#filters#matcher_default#use(['matcher_fuzzy'])"

    let g:unite_data_directory = g:__CwdStoreDirectory."/unite"

    let g:unite_source_history_yank_enable = 1
    let g:unite_source_yank_history_save_clipboard = 1
    let g:unite_prompt = '» '
endfunction

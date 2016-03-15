function manager#plugin#interestingwords#Settings()
    let g:interestingWordsDefaultMappings = 0
    let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
    let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']
    let g:interestingWordsRandomiseColors = 1
endfunction

function manager#plugin#interestingwords#Mappings()
    execute 'nnoremap <silent> <leader>h :call InterestingWords(''n'')<cr>'
    execute 'nnoremap <silent> <leader>H :call UncolorAllWords()<cr>'

    execute 'nnoremap <silent> <leader>hn :call WordNavigation(''forward'')<cr>'
    execute 'nnoremap <silent> <leader>hN :call WordNavigation(''backward'')<cr>'
endfunction


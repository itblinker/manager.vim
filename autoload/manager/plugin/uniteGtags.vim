

function s:settings()
    let g:unite_source_gtags_project_config = {
                \ '_': { 'treelize': 1, 'uniteSource__Gtags_LineNr': 1, 'uniteSource__Gtags_Path': 1 }
                \ }
endfunction

function manager#plugin#uniteGtags#Setup()
    call s:settings()
endfunction

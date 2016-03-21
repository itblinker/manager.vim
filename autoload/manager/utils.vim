function manager#utils#GetFromVisualSelection()
    let [lnum1, col1] = getpos("'<")[1:2]
    let [lnum2, col2] = getpos("'>")[1:2]
    let lines = getline(lnum1, lnum2)
    let lines[-1] = lines[-1][: col2 - (&selection == 'inclusive' ? 1 : 2)]
    let lines[0] = lines[0][col1 - 1:]
    return join(lines, "\n")
endfunction

"{{{ grep settings
let s:arg_common = ' -inHr '
let s:arg_include =' '
let s:arg_exclude = ' --exclude-dir=.git --exclude-dir=.svn --exclude-dir=.bzr '
let s:arguments = s:arg_common.s:arg_include.s:arg_exclude


function manager#utils#GetFGrepCmd(p_pattern, p_path, p_flags)
    let l:pattern = escape(a:p_pattern, '%#!')
    return 'grep! '.s:arguments.' -F '''.l:pattern.''' '.a:p_flags.' '.a:p_path
endfunction


function manager#utils#GrepFromPath(p_path, p_pattern)
    "execute 'echo ''path is'.a:p_path.' pattern is '.a:p_pattern.''''
    execute manager#utils#GetFGrepCmd(a:p_pattern, a:p_path, s:arg_common.s:arg_include)
endfunction

"}}}

function manager#utils#RecursiveGrep(p_pattern)
    call maktaba#ensure#IsString(a:p_pattern)
    execute manager#utils#GetFGrepCmd(a:p_pattern, getcwd(), ' -r ')
endfunction


function s:getListOfFiles(p_pattern)
    call maktaba#ensure#IsString(a:p_pattern)
    let l:cmd = 'find '.getcwd().' -name '''.a:p_pattern.''''
    return split(system(l:cmd))
endfunction


function manager#utils#FindAndOpenFile(p_pattern)
    let l:list = s:getListOfFiles(a:p_pattern)
    if len(l:list)
        for file in l:list
            execute 'e '.file
        endfor
    else
        execute 'echo ''file '.a:p_pattern.' not found in cwd'''
    endif
endfunction

"{{{ helper
function s:fileOpener(p_patter)
    let l:list = s:getListOfFiles(a:p_patter)
    for file in l:list
        execute 'e '.file
    endfor
endfunction
"}}}
function manager#utils#OpenSimilarFile()
    "let l:file_base = expand('%:t:r')
    let l:file_base = substitute(expand('%:t:r'), 'I', '*', 'g')
    call s:fileOpener(l:file_base.'TestSuite.*')
    call s:fileOpener(l:file_base.'Mock.*')
    call s:fileOpener(l:file_base.'Stub.*')
endfunction

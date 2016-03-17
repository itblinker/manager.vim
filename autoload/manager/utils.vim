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

function s:getGrepCmd(p_pattern, p_path)
    return 'grep! '.s:arguments.' -e '''.a:p_pattern.''' '.a:p_path
endfunction

endfunction
"}}}

function manager#utils#GrepVisualSelection()
    execute s:getGrepCmd(manager#utils#GetFromVisualSelection(), getcwd())
endfunction

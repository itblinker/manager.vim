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
    execute manager#utils#GetFGrepCmd(a:p_pattern, a:p_path, s:arg_common.s:arg_include)
endfunction

"}}}

function manager#utils#RecursiveGrep(p_pattern)
    call maktaba#ensure#IsString(a:p_pattern)
    execute manager#utils#GetFGrepCmd(a:p_pattern, getcwd(), ' ')
endfunction


function s:getListOfFiles(p_pattern)
    call maktaba#ensure#IsString(a:p_pattern)
    call maktaba#string#Strip(a:p_pattern)
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

"{{{ find similiar file - helper functions
function s:getFilenameWithoutExtension()
    return expand('%:t:r')
endfunction

function s:replaceCharInString(p_string, p_char, p_finalChar)
    return substitute(a:p_string, a:p_char, a:p_finalChar, '')
endfunction

function s:cutOffWordInString(p_string, p_word)
    return substitute(a:p_string, a:p_word, '', '')
endfunction
"}}}

function manager#utils#GetBaseFilenameForFindSimiliarFunction()
    let l:filename = s:getFilenameWithoutExtension()
    let l:filename = s:cutOffWordInString(l:filename, 'TestSuite')
    let l:filename = s:cutOffWordInString(l:filename, 'Mock')
    let l:filename = s:cutOffWordInString(l:filename, 'Stub')

    return s:replaceCharInString(l:filename, 'I', '*')
endfunction


function manager#utils#GetBufferList()
  redir =>buflist
  silent! ls
  redir END
  return buflist
endfunction


function manager#utils#OlderList()
    if manager#utils#IsLocationList()
       lolder
   else
       colder
    endif
endfunction


function manager#utils#NewerList()
    if manager#utils#IsLocationList()
        lnewer
    else
        cnewer
    endif
endfunction


function manager#utils#IsLocationList()
    let curbufnr = winbufnr(0)
    for bufnum in map(filter(split(manager#utils#GetBufferList(), '\n'), 'v:val =~ "Location List"'), 'str2nr(matchstr(v:val, "\\d\\+"))')
        if curbufnr == bufnum
            return 1
        endif
    endfor
    return 0
endfunction

"{{{ implementation from https://svn.apache.org/repos/asf/subversion/trunk/contrib/client-side/vim/vim-blame.vimrc
"Show the Subversion 'blame' annotation for the current file, in a narrow
"  window to the left of it.
"Usage:
"  'gb' or ':Blame'
"  To get rid of it, close or delete the annotation buffer.
"Bugs:
"  If the source file buffer has unsaved changes, these aren't noticed and
"    the annotations won't align properly. Should either warn or preferably
"    annotate the actual buffer contents rather than the last saved version.
"  When annotating the same source file again, it creates a new annotation
"    buffer. It should re-use the existing one if it still exists.
"Possible enhancements:
"  When invoked on a revnum in a Blame window, re-blame same file up to the
"    previous revision.
"  Dynamically synchronize when edits are made to the source file
"}}}
function manager#utils#SvnBlame()
   let line = line(".")
   setlocal nowrap

   "aboveleft 18vnew
   vertical 18vnew

   " blame, ignoring white space changes
   %!svn blame -x-w "#"
   setlocal nomodified readonly buftype=nofile nowrap winwidth=1
   setlocal nonumber

   if has('&relativenumber') | setlocal norelativenumber | endif

   exec "normal " . line . "G"

   setlocal scrollbind
   wincmd p
   setlocal scrollbind
   syncbind
endfunction


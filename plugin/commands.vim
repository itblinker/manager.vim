"{{{ source guard
if exists('g:loaded_manager_commands')
    finish
endif
let g:loaded_manager_commands = 1
"}}}

command RcEdit :e $MYVIMRC
command RcSource :source $MYVIMRC

command -nargs=1 SniffKeywordRecursively :call manager#utils#RecursiveGrep(<f-args>)
command -nargs=* -complete=file SniffKeywordFromPath :call manager#utils#GrepFromPath(<f-args>)
command -nargs=1 OpenFileByName :call manager#utils#FindAndOpenFile(<f-args>)
command -nargs=1 OpenGlobbedFiles : call manager#utils#FindAndOpenFile('*'.<f-args>.'*')

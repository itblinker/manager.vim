"{{{ source guard
if exists('g:loaded_manager_commands')
    finish
endif
let g:loaded_manager_commands = 1
"}}}

command RcEdit :e $MYVIMRC
command RcSource :source $MYVIMRC

command -nargs=* -complete=file SniffKeyword :call manager#utils#GrepFromPath(<f-args>)
command -nargs=* -complete=file FindFileAndOpen :call manager#utils#FindAndOpenFile(<f-args>)

"{{{ source guard
if exists('g:loaded_manager_commands')
    finish
endif
let g:loaded_manager_commands = 1
"}}}

command RcEdit :e $MYVIMRC
command RcSource :source $MYVIMRC

command -nargs=1 Grepper :call manager#utils#Grep(<f-args>)
command -nargs=1 FindFile :call manager#utils#FindAndOpenFile(<f-args>)

"{{{ source guard
if exists('g:loaded_manager_commands')
    finish
endif
let g:loaded_manager_commands = 1
"}}}

comma RcEdit :e $MYVIMRC
command RcSourc :source $MYVIMRC

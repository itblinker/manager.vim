"{{{ source guard
let [s:plugin, s:enter] = maktaba#plugin#Enter(expand('<sfile>:p'))
if !s:enter
    finish
endif
"}}}

command RcEdit :e $MYVIMRC
command RcSource :source $MYVIMRC

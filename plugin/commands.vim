"{{{ source guard
let [s:plugin, s:enter] = maktaba#plugin#Enter(expand('<sfile>:p'))
if !s:enter
    finish
endif
"}}}

"command! Rc :e $MYVIMRC
"command! Reload :source $MYVIMRC

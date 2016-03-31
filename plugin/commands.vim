"{{{ source guard
if exists('g:loaded_manager_commands')
    finish
endif
let g:loaded_manager_commands = 1
"}}}

command RcEdit :e $MYVIMRC
command RcSource :source $MYVIMRC

command -nargs=1 RFGrepFromCwd :call manager#utils#RecursiveGrep(<f-args>)
command -nargs=* -complete=file RFgrepFromPath :call manager#utils#GrepFromPath(<f-args>)
command -nargs=1 FindFileAndOpen :call manager#utils#FindAndOpenFile(<f-args>)
command -nargs=1 FindGlobbedFileAndOpen : call manager#utils#FindAndOpenFile('*'.<f-args>.'*')
command Todo :e ~/Dropbox/Aplikacje/Simpletask\ App\ Folder/todo/todo.txt
command Done :e ~/Dropbox/Aplikacje/Simpletask\ App\ Folder/todo/done.txt

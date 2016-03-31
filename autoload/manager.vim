function manager#ConfigureVim()
    call maktaba#json#python#Disable()
    call manager#vim#PathsConfiguration()

    call manager#plugin#Customize('unite')
    call manager#plugin#Customize('uniteTags')
    call manager#plugin#Customize('uniteGtags')
    call manager#plugin#Customize('uniteQuickFix')

    "call manager#plugin#Customize('airline')
    call manager#plugin#Customize('bufferline')
    call manager#plugin#Customize('cppenhancedhighlits')
    call manager#plugin#Customize('easymotion')
    call manager#plugin#Customize('gundo')
    call manager#plugin#Customize('maximizer')
    call manager#plugin#Customize('nerdtree')
    call manager#plugin#Customize('nerdcomment')
    call manager#plugin#Customize('qfenter')
    "call manager#plugin#Customize('hiCursorWord')

    "call manager#plugin#Customize('interestingwords')
    call manager#plugin#Customize('vimbookmarks')

    call manager#plugin#Customize('vifm')
    call manager#plugin#Customize('rainbowParenthesis')
    call manager#plugin#Customize('bufsurf')

    call manager#plugin#Customize('simplenote')
    "call manager#plugin#Customize('easygit')
    "call manager#plugin#Customize('unitesession')
    "call manager#plugin#Customize('editgq')
    "call manager#plugin#Customize('localvimrc')
    "call manager#plugin#Customize('filesearch')
    "call manager#Customize('ag')
    "call manager#plugin#Customize('ctagger')
    "call manager#plugin#Customize('ctrlp')
    "call manager#plugin#Customize('ctrlptjump')
endfunction

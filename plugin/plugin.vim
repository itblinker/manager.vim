"{{{ source guard
let [s:plugin, s:enter] = maktaba#plugin#Enter(expand('<sfile>:p'))
if !s:enter
    finish
endif
"}}}

call vim#SetupGlobalSettings()
call manager#plugins#Setup()
call manager#plugins#SetupMapping()

echo maktaba#plugin#RegisteredPlugins()



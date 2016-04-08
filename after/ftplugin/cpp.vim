setlocal colorcolumn=120

setlocal tabstop=4       "number of spaces equals one tab
setlocal shiftwidth=4    "when you shift by >> or << it'll shift using this number of spaces
setlocal shiftround      "it'll keep all alignment by tabstop and shiftwidth
setlocal expandtab       "tab will be replaced by spaces

setloca nowrap


"TODO: check if gtags are available
execute 'nnoremap <buffer> <C-]> :Unite '.manager#plugin#unite#GetPreviewCommonSubSettings().' -immediately gtags/def<CR>'
execute 'nnoremap <buffer> <leader>gr :Unite '.manager#plugin#unite#GetPreviewCommonSubSettings().' gtags/ref<CR>'
execute 'nnoremap <buffer> <leader>gc :Unite '.manager#plugin#unite#GetPreviewCommonSubSettings().' gtags/context<CR>'
execute 'nnoremap <buffer> <leader>gG :Unite '.manager#plugin#unite#GetPreviewCommonSubSettings().' gtags/grep:<CR>'

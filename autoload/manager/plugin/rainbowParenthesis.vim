function manager#plugin#rainbowParenthesis#Settings()
    let g:rbpt_colorpairs = [
                \ ['brown',       'RoyalBlue3'],
                \ ['darkgreen',   'firebrick3'],
                \ ['darkcyan',    'RoyalBlue3'],
                \ ['darkmagenta', 'DarkOrchid3'],
                \ ['brown',       'firebrick3'],
                \ ['gray',        'RoyalBlue3'],
                \ ['darkmagenta', 'DarkOrchid3'],
                \ ['Darkblue',    'firebrick3'],
                \ ['darkcyan',    'SeaGreen3'],
                \ ['red',         'firebrick3']
                \ ]

                "\ ['Darkblue',    'SeaGreen3'],
                "\ ['darkgray',    'DarkOrchid3'],
                "\ ['black',       'SeaGreen3'],
                "\ ['darkgreen',   'RoyalBlue3'],

    let g:rbpt_max = 16
    let g:rbpt_loadcmd_toggle = 0

    au VimEnter * RainbowParenthesesToggle
    au Syntax * RainbowParenthesesLoadRound
    au Syntax * RainbowParenthesesLoadSquare
    au Syntax * RainbowParenthesesLoadBraces
endfunction

function manager#plugin#rainbowParenthesis#Mappings()
endfunction

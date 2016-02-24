function manager#plugin#Customize(p_plugin)
    execute 'silent call manager#plugin#'.a:p_plugin.'#Settings()'
    execute 'silent call manager#plugin#'.a:p_plugin.'#Mappings()'
endfunction

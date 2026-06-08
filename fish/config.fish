source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

fish_add_path ~/.local/bin
alias gpu-battery='sudo envycontrol -s integrated && sudo reboot'
alias gpu-hybrid='sudo envycontrol -s hybrid && sudo reboot'
alias gpu-gaming='sudo envycontrol -s nvidia && sudo reboot'

alias update='sudo pacman -Syu && flatpak update'

# SteamVR Realtime-Priorität Fix (nach Updates wiederholen)
alias steamvr-fix='sudo setcap CAP_SYS_NICE+eip ~/.local/share/Steam/steamapps/common/SteamVR/bin/linux64/vrcompositor-launcher && echo "SteamVR fix applied"'

# Fix fuer Line-Out
alias fix-lineout='amixer -c 0 cset numid=6 70,70'

function extract                                                          
    switch $argv[1]                                                       
        case "*.tar.gz"   ; tar xzf $argv[1]                              
        case "*.tar.bz2"  ; tar xjf $argv[1]                              
        case "*.tar.xz"   ; tar xf $argv[1]                               
        case "*.zip"      ; unzip $argv[1]                                
        case "*.7z"       ; 7z x $argv[1]                                 
        case "*"          ; echo "Unbekanntes Format"                     
    end                                                                   
end

fnm env --use-on-cd | source


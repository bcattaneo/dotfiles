#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Sistema
alias ls='ls --color=auto'
alias hora='watch -t -c -n1 "date +%T|toilet --gay"'
alias bateria='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "state|to\ full|to\ empty|percentage|warning-level"'

# SSH a servidores
alias agente-ssh='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_rsa'
alias server3='ssh hasefroch@server3.cattaneo.uy'
alias pleasemunch='sshfs hasefroch@please.munch.mypen.is:/var/www/pleasemunch ~/mnt/please.munch.mypen.is'

# Conexiones WIFI
alias lared='sudo netctl start lared'
alias caliope='sudo netctl start caliope'
alias lg-ap='sudo netctl start lg-ap'

# Apagar/Reiniciar sistema
alias apagar='sudo shutdown -h 0'
alias reiniciar='sudo shutdown -r 0'

# VIM
alias configurar-vim='sudo vim /usr/share/vim/vimfiles/archlinux.vim'

# XRANDR
alias monitor-cuarto='xrandr --output HDMI1 --auto --right-of LVDS1 & sh ~/.fehbg'
alias monitor-living='xrandr --output HDMI1 --auto --right-of LVDS1 & sh ~/.fehbg'

## BASH PROMPT ##
PS1="\[\e[32m\]\w\[\e[m\] > "

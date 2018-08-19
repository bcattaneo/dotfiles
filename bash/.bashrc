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
alias server1='ssh hasefroch@server1.cattaneo.uy'
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
alias configurar-vim='sudo vim ~/.vimrc'

# XRANDR
alias monitor-cuarto='displaylink2 && displaylink1 && displaylink0'
alias monitor-solo='xrandr --output DVI-I-1-1 --off && xrandr --output HDMI1 --off && xrandr --output LVDS1 --auto && sh ~/.fehbg'
alias monitor-living='xrandr --output HDMI1 --auto --right-of LVDS1 && sh ~/.fehbg'
#alias displaylink0='xrandr --setprovideroutputsource 1 0'
alias displaylink0='xrandr --output LVDS1 --off'
alias displaylink1='xrandr --output DVI-I-1-1 --auto --left-of LVDS1 && sh ~/.fehbg'
alias displaylink2='xrandr --output HDMI1 --auto --right-of LVDS1 --rotate left && sh ~/.fehbg'

# GIT
alias git-sud0='git config --global user.name "sud0" && git config --global user.email "sud0@thanksdisney.com"'
alias git-bcattaneo='git config --global user.name "Bruno Cattáneo" && git config --global user.email "c@ttaneo.uy"'

# OTROS
alias desa='cd ~/ownCloud/Desarrollo'
alias funcional1='cd "/home/hasefroch/ownCloud/UCU/Programación Funcional"'
alias rdp1='rdesktop -f -u hasefroch server1.cattaneo.uy:8080'
alias xilinx='source /opt/Xilinx/14.7/ISE_DS/settings64.sh'

## BASH PROMPT ##
PS1="\[\e[36m\]\w\[\e[m\] "
#if [ -f `which powerline-daemon` ]; then
#  powerline-daemon -q
#  POWERLINE_BASH_CONTINUATION=1
#  POWERLINE_BASH_SELECT=1
#  #. /usr/share/powerline/bash/powerline.sh
#  . /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh
#fi

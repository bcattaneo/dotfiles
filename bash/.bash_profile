#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# autostarts X on boot
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi


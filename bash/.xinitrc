#feh --bg-scale ~/.config/pictures/background.png
feh --bg-scale ~/.config/pictures/background.jpg
xrdb -merge ~/.Xresources
#setxkbmap -option compose:menu
#setxkbmap -option compose:ralt
setxkbmap
exec i3
#exec startlxqt
#exec startdde

# gnome
#export XDG_CURRENT_DESKTOP=GNOME-Classic:GNOME
#export GNOME_SHELL_SESSION_MODE=classic
#exec gnome-session --session=gnome-classic

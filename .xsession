xmodmap ~/.xmodmap

trayer --edge top --align right --SetDockType true --SetPartialStrut true \
       --expand true --width 10 --height 12 --transparent true --alpha 0 \
       --tint 0x000000 &

gnome-settings-daemon
gnome-screensaver

gnome-power-manager &
gnome-volume-control-applet &

xsetroot -solid black

x-terminal-emulator &

xmonad

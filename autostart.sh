#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
#run "xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal"
#run "xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off"

run "dropbox"
run "compton"
run "devilspie -a"
run "unclutter"
run "udiskie"

run "nm-applet"
#run "caffeine"
run "pamac-tray"
run "variety"
run "blueberry-tray"

run "xfce4-power-manager"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
run "setxkbmap -layout es"
run "numlockx on"


pkill conky

Sleep 3
run "conky" | while read -r line; do echo -E "conky_widget:set_text('$line')" | awesome-client; done

#run "volumeicon"
#run "nitrogen --restore"
#run "conky -c $HOME/.config/awesome/system-overview"

#run applications from startup
#run "firefox"
#run "atom"
#run "dropbox"
#run "insync start"
#run "spotify"

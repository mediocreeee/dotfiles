#!/usr//bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
	$@&
  fi
}

run "$HOME/scripts/wallplaylist"
sxiv ~/pix/compendium/physics
run "telegram-desktop"
run "nm-applet"
run "devmon"
run "blueberry-tray"

# run "volumeicon"
# run "zathura ~/dox/books/Komandnaia_stroka_Linux.pdf"
# run "discord"
# run "rslsync"
# run "barrier"
# run "emacs"

# dwall -s firewatch3 &
# nitrogen --restore

# run "xinput --set-prop 'SINOWEALTH Wired Gaming Mouse' 'libinput Accel Speed' -0.8"
# run "setxkbmap -layout 'us, ru'"
# run "setxkbmap -option grp:caps_toggle"
# run "xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off"

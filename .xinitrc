#!/bin/sh
# shellcheck disable=1090,2015

# setxkbmap tr
xrdb "$HOME/.local/share/xresource-themes/dark/dracula"
xcompmgr -C &
powercheck &
sb &
xbanish &
mpd >/dev/null 2>&1 &
nlr &
numlockx on &
sxhkd &
xss-lock "$HOME/.local/bin/lockme" &
[ -S "/tmp/emacs$(id -u)/server" ] || emacs --daemon &
[ -e "$HOME/.custom.sh" ] && "$HOME/.custom.sh" &

exec dwm

export ENV="$HOME/.env"
. "$ENV"
[ -z "$DISPLAY" ] && [ "$(tty)" = /dev/tty1 ] && exec x ||:

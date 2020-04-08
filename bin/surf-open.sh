#!/bin/sh

xidfile="/tmp/$USER-tabbed-surf.xid"
uri="${1:-${SURF_STARTPAGE:-duckduckgo.com}}"

runtabbed() { tabbed -cdn tabbed-surf -r 2 surf -e '' "$uri" >"$xidfile" 2>/dev/null & }

! [ -r "$xidfile" ] && { runtabbed ; exit 0 ;}
read -r xid < "$xidfile"
xprop -id "$xid" >/dev/null 2>&1 || { runtabbed ; exit 0 ;}
surf -e "$xid" "$uri" >/dev/null 2>&1 &

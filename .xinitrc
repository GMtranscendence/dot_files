~/wm/slstatus/slstatus &
setxkbmap pl,ru,ua -option "grp:alt_shift_toggle" &
redshift -P -O 4500 & 
xinput disable 13 &
flameshot &
~/.scripts/monitor.sh
amixer sset Capture toggle &
while true; do
    # Log stderror to a file 
    dwm 2> ~/.dwm.log
    # No error logging
    #dwm >/dev/null 2>&1
done

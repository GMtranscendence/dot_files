~/wm/slstatus/slstatus &
redshift -P -O 4500 & 
xinput disable 13 &
flameshot &
xrandr --output HDMI-0 --primary --mode 1920x1080 --rate 60.00 --output eDP-1-1 --mode 1920x1080 --rate 60.00 --below HDMI-0 &
while true; do
    # Log stderror to a file 
    dwm 2> ~/.dwm.log
    # No error logging
    #dwm >/dev/null 2>&1
done

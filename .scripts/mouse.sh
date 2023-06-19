touchpad_id=$(xinput list |grep "ELAN0718:01 04F3:30FD Touchpad" | awk '{print $6}' | cut -d '=' -f 2)
mouse_id=$(xinput list |grep "ELAN0718:01 04F3:30FD Mouse" | awk '{print $6}' | cut -d '=' -f 2)
touchpad=$(xinput list-props $touchpad_id | awk '/Device Enabled/{print $4}')
mouse=$(xinput list-props $mouse_id 2>/dev/null)
if [[ -z $mouse ]]; then
	if [ $touchpad=0 ]; then
		echo $(xinput enable $touchpad_id)
	fi
else
	if [ $touchpad=1 ]; then
		echo $(xinput disable $touchpad_id)
	fi
fi

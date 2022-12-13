touchpad=$(xinput list-props 13 | awk '/Device Enabled/{print $4}')
mouse=$(xinput list-props 18 2>/dev/null)
if [[ -z $mouse ]]; then
	if [ $touchpad=0 ]; then
		echo $(xinput enable 13)
	fi
else
	if [ $touchpad=1 ]; then
		echo $(xinput disable 13)
	fi
fi

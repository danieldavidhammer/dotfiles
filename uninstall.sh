#!/bin/sh

exec 2>&1

SCRIPTPATH=$(dirname $0)

if [[ $1 == workstation ]]; then 
	#i3
	if [[ -e /home/$USER/.config/i3/config.old ]]; then
		mv /home/$USER/.config/i3/config.old /home/$USER/.config/i3/config
	fi

	#urxvt
	if [[ -e /home/$USER/.Xresources.old ]]; then
		mv /home/$USER/.Xresources.old /home/$USER/.Xresources
	fi

	#polybar
	if [[ -e /home/$USER/.config/polybar/config.old ]]; then
		mv /home/$USER/.config/polybar/config.old /home/$USER/.config/polybar/config
	fi

	if [[ -e /home/$USER/.config/polybar/polybar.sh.old ]]; then
		mv /home/$USER/.config/polybar/polybar.sh.old /home/$USER/.config/polybar/polybar.sh
	fi
	
	#fstab
	if [[ -e /etc/fstab.old ]]; then
		sudo mv /etc/fstab.old /etc/fstab
	fi
fi

exit 0

#!/bin/sh

exec 2>&1

SCRIPTPATH=$(dirname $0)

if [[ $1 == workstation ]]; then 
	#i3
	if [[ -e /home/$USER/.config/i3/config ]]; then
		mv /home/$USER/.config/i3/config /home/$USER/.config/i3/config.old
		cp $SCRIPTPATH/workstation/i3-gaps/config /home/$USER/.config/i3/config
	else
		mkdir -p /home/$USER/.config/i3
		cp $SCRIPTPATH/workstation/i3-gaps/config /home/$USER/.config/i3/
	fi

	#urxvt
	if [[ -e /home/$USER/.Xresources ]]; then
		mv /home/$USER/.Xresources /home/$USER/.Xresources.old
		cp $SCRIPTPATH/workstation/.Xresources /home/$USER/.Xresources
	else
		cp $SCRIPTPATH/workstation/.Xresources /home/$USER/.Xresources
	fi

	#polybar
	if [[ -e /home/$USER/.config/polybar/config ]]; then
		mv /home/$USER/.config/polybar/config /home/$USER/.config/polybar/config.old
		cp $SCRIPTPATH/workstation/polybar/config /home/$USER/.config/polybar/config
	else
		mkdir -p /home/$USER/.config/polybar
		cp $SCRIPTPATH/workstation/polybar/config /home/$USER/.config/polybar/
	fi

	if [[ -e /home/$USER/.config/polybar/polybar.sh ]]; then
		mv /home/$USER/.config/polybar/polybar.sh /home/$USER/.config/polybar/polybar.sh.old
		cp $SCRIPTPATH/workstation/polybar/polybar.sh /home/$USER/.config/polybar/
	else
		mkdir -p /home/$USER/.config/polybar
		cp $SCRIPTPATH/workstation/polybar/polybar.sh /home/$USER/.config/polybar/
	fi
	
	#fstab
	if [[ -e /etc/fstab ]]; then
		sudo mv /etc/fstab /etc/fstab.old
		sudo cp $SCRIPTPATH/workstation/fstab /etc/
	else
		sudo cp $SCRIPTPATH/workstation/fstab /etc/
	fi

	#vimrc
	if [[ -e /home/$USER/.vimrc ]]; then
		mv /home/$USER/.vimrc /home/$USER/.vimrc.old
		cp $SCRIPTPATH/workstation/.vimrc /home/$USER/.vimrc
	else
		cp $SCRIPTPATH/workstation/.vimrc /home/$USER/.vimrc
	fi

	#xinitrc
	if [[ -e /home/$USER/.xinitrc ]]; then
		mv /home/$USER/.xinitrc /home/$USER/.xinitrc.old
		cp $SCRIPTPATH/workstation/.Xresources /home/$USER/.xinitrc
	else
		cp $SCRIPTPATH/workstation/.xinitrc /home/$USER/.xinitrc
	fi



fi

exit 0

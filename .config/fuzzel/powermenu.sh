#!/bin/bash

SELECTION="$(printf "󰍃 Logout\n Lock\n⏻ Shutdown\n󰜉 Reboot\n Reboot to UEFI\n Cancel" | fuzzel --dmenu -l 6 -p "Select an option: ")"

case $SELECTION in
	*"󰍃 Logout")
		CONFIRM_SEL="$(printf " Logout\n Nevermind" | fuzzel --dmenu -l 2 -p "Are you sure?: ")"
		case $CONFIRM_SEL in
			*" Logout")
				hyprctl dispatch exit;;
		esac;;
	*" Lock")
		CONFIRM_SEL="$(printf " Lock\n Nevermind" | fuzzel --dmenu -l 2 -p "Are you sure?: ")"
		case $CONFIRM_SEL in
			*" Lock")
				hyprlock;;
		esac;;
	*"⏻ Shutdown")
		CONFIRM_SEL="$(printf " Shutdown\n Nevermind" | fuzzel --dmenu -l 2 -p "Are you sure?: ")"
		case $CONFIRM_SEL in
			*" Shutdown")
				systemctl poweroff;;
		esac;;
	*"󰜉 Reboot")
		CONFIRM_SEL="$(printf " Reboot\n Nevermind" | fuzzel --dmenu -l 2 -p "Are you sure?: ")"
		case $CONFIRM_SEL in
			*" Reboot")
				systemctl reboot;;
		esac;;
	*" Reboot to UEFI")
		CONFIRM_SEL="$(printf " Reboot to UEFI\n Nevermind" | fuzzel --dmenu -l 2 -p "Are you sure?: ")"
		case $CONFIRM_SEL in
			*" Reboot to UEFI")
				systemctl reboot --firmware-setup;;
		esac;;
esac

#!/bin/bash

case $1 in
	install)
		case $2 in
			"--yes")
				paru -S --noconfirm "${@:3}" ;;
			*)
				paru -S "${@:2}" ;;
		esac ;;
	remove)
		paru -R "${@:2}" ;;
	update)
		paru -Sy "${@:2}" ;;
	upgrade)
		case $2 in
			"--yes")
				paru -Syu --noconfirm "${@:3}" ;;
			*)
				paru -Syu "${@:2}";;
		esac ;;
	*)
		paru "${@:2}" ;;
esac

#? how to put --yes in any position? Simple way, please
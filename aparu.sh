#!/bin/bash

case $1 in
	upgrade)
		paru ;;
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
		paru -Sy ;;
	upgrade)
		case $2 in
			"--yes")
				paru -Syu --noconfirm ;;
			*)
				paru -Syu ;;
		esac ;;
	*)
		paru "${@:2}" ;;
esac

#? how to put --yes in any position? Simple way, please
#!/bin/bash

case $1 in
	install)
		case $2 in
			"--yes")
				paru -S --noconfirm --sudoloop "${@:3}" ;;
			*)
				paru -S --sudoloop "${@:2}" ;;
		esac ;;
	remove)
		paru -R "${@:2}" ;;
	update)
		paru -Sy "${@:2}" ;;
	upgrade)
		case $2 in
			"--yes")
				paru -Syu --noconfirm --sudoloop "${@:3}" ;;
			*)
				paru -Syu --sudoloop "${@:2}";;
		esac ;;
	*)
		paru --sudoloop "${@:2}" ;;
esac

#? how to put --yes in any position? Simple way, please
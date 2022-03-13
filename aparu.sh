#!/bin/bash

case $1 in
	upgrade)
		paru ;;
	install)
		paru -S ${@:2} ;;
esac
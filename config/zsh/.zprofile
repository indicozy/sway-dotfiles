if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep bspwm || exec startx "$XINITRC"
fi

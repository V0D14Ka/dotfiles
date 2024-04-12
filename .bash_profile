#
# ~/.bash_profile
#

setfont ter-c28b

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$XDG_RUNTIME_DIR" ]; then
	XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"

	mkdir -pm 0700 "$XDG_RUNTIME_DIR"
	export XDG_RUNTIME_DIR
fi

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
	exec Hyprland
fi

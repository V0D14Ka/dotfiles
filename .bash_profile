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
	export XDG_CURRENT_DESKTOP=Hyprland
	export QT_QPA_PLATFORM=wayland
	export XDG_SESSION_TYPE=wayland
	export XDG_SESSION_DESKTOP=Hyprland
	exec Hyprland
fi

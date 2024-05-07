#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias lvim='sh ~/.local/bin/lvim'
alias code='sh code  --ozone-platform=wayland '
alias obsidian='sh obsidian --ozone-platform-hint=wayland'
eval "$(starship init bash)"

function vpn {
    case "$1" in
        "off")
            echo "Killing all openconnect connections"
            sudo killall -SIGINT openconnect
            ;;
        "work")
            echo "Connecting to $1 VPN ..." 
            sudo openconnect --background https://svpn.dvfu.ru -u "$2" --no-dtls --authgroup vpn
            sleep 1
            sudo ip route add 192.168.9.2/32 via 0.0.0.0 dev tun0
            ;;
        *)
            echo "Unknown VPN name"
            ;;
    esac
}

neofetch --source ~/.config/neofetch/endeavouros_small

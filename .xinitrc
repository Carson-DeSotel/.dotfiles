[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources 

source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

export $PATH

xset +fp ~/.local/fonts/ &

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

xset b off

exec bspwm

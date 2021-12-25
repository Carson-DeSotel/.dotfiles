source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

xrdb -load ~/.Xresources

export $PATH

## add jupyter notebook launch script to path
export $PATH="$PATH:~/.dotfiles/scripts/launch-jupyter-notebook.sh"

xset +fp ~/.local/fonts/ &

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

xset b off

## Add java windows settings
export _JAVA_AWT_WM_NONREPARTENTING=1
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

### Load key manager and window manager
sxhkd & 
exec bspwm

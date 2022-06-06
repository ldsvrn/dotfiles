#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

/home/louis/.config/audiofix.sh &
setxkbmap fr -option compose:menu &
xrandr --output DVI-D-0 --mode 1280x1024 --pos 0x0 --rotate normal --output HDMI-0 --primary --mode 1680x1050 --pos 1280x0 --rotate normal --output DP-0 --off --output DP-1 --off &
nm-applet &
lxsession &
rclone mount onedrive: ~/onedrive/ &
#exec qtile start
exec awesome

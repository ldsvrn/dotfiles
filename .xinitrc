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

setxkbmap fr -option compose:menu &
xrandr --output DVI-D-0 --mode 1440x900 --pos 0x270 --rotate normal --output HDMI-0 --primary --mode 1680x1050 --pos 1440x195 --rotate normal --output DP-0 --off --output DP-1 --mode 1440x900 --pos 3120x0 --rotate right &
nm-applet &
lxsession &
picom &
flameshot &
#variety &
thunderbird &
keepassxc &
#rclone mount onedrive: ~/onedrive/ &
rclone mount secret: onedrive_crypt/ --vfs-cache-mode writes &
#exec qtile start
exec awesome

# 2018 Minimal Dotfiles for Arch Linux and Antergos

Minimal setup using merged and updated settings from the older 2017 version of https://github.com/aaronhalford/dotfiles repository.

Still a work-in-progress so bugs may exist.

## Configuration File Locations

* firefox
  * open browser and type `about:config`

* gnome3
  * stored in dconf and can be accessed with:
    * gsettings
    * dconf

* mpv
  * /etc/mpv
  * ~/.config/mpv/mpv.conf
  * ~/.config/mpv/input.conf

* synaptics and libinput
  * /usr/share/X11/xorg.conf.d/40-libinput.conf
  * /usr/share/X11/xorg.conf.d/70-synaptics.conf
  * /etc/X11/xorg.conf.d/30-touchpad.conf

* tilix
  * backup or load from dconf
    * dconf dump /com/gexperts/Tilix/ > tilix.dconf
    * dconf load /com/gexperts/Tilix/ < tilix.dconf

* visual-studio-code
  * ~/.config/Code/User/settings.json

* youtube-dl
  * /etc/youtube-dl.conf
  * ~/.config/youtube-dl/config

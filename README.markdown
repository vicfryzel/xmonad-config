# xmonad-config
xmonad-config is the [xmonad](http://xmonad.org/) configuration used by Vic Fryzel.


## Introduction

If you are unfamiliar with xmonad, it is a tiling window manager that is
notoriously minimal, stable, beautiful, and featureful.  If you find yourself
spending a lot of time organizing or managing windows, you may consider trying
xmonad.

However, xmonad can be somewhat difficult to configure if you're new to
Haskell or even to xmonad itself.

This project contains a completely working and very usable xmonad
configuration "out of the box".  If you are just starting out with xmonad,
this will give you a configuration that I personally use for around 12 hours
every day.  Thought has been put into the colors, key bindings, layouts,
and supplementary scripts to make life easier.

This project is also recommended for advanced xmonad users, who may just not
want to reinvent the wheel.  All source provided with this project is well
documented and simple to customize.

![Screenshot of xmonad-config](https://raw.github.com/vicfryzel/xmonad-config/master/screenshot.png)
For source code, or to contribute, see the
[xmonad-config project page](https://github.com/vicfryzel/xmonad-config).


## Requirements

* xmonad 0.13
* xmonad-contrib 0.13
* [xmobar 0.24.5](https://github.com/jaor/xmobar)
* [consolekit 0.4.6](https://www.freedesktop.org/wiki/Software/ConsoleKit/)
* [stalonetray 0.8.1](http://stalonetray.sourceforge.net/)
* [dmenu 4.7](https://tools.suckless.org/dmenu/)
* [yeganesh 2.5](http://dmwit.com/yeganesh/)
* [scrot 0.8](https://en.wikipedia.org/wiki/Scrot)

### Installing requirements on [Arch Linux](https://www.archlinux.org/)

    sudo pacman -S xmonad xmonad-contrib xmobar stalonetray dmenu scrot \
        cabal-install xcompmgr
    sudo cabal update
    cabal install --global yeganesh
    
Also install the [consolekit-git](https://wiki.archlinux.org/index.php/ConsoleKit)
package from the AUR. The process for doing this is documented
[here](https://wiki.archlinux.org/index.php/Arch_User_Repository).


### Installing requirements on [Ubuntu Linux](https://www.ubuntu.com/) or [Debian Linux](https://www.debian.org)

    sudo aptitude install xmonad libghc-xmonad-contrib-dev xmobar stalonetray \
        suckless-tools scrot cabal-install xcompmgr consolekit
    sudo cabal update
    sudo cabal install --global yeganesh


## Installation

Installing xmonad-config is a matter of backing up any xmonad configuration
you may already have, cloning the git repository, and updating your PATH.

    cd
    mv .xmonad .xmonad.orig
    git clone https://github.com/vicfryzel/xmonad-config.git .xmonad

Once xmonad-config is installed, you also need to ensure you can actually
start xmonad.  The mechanism to do this varies based on each environment, but
here are some instructions for some common login managers.

### Starting xmonad from lightdm, xdm, kdm, or gdm

Note: You may need to choose "Custom xsession" or similar at the login screen.

    ln -s ~/.xmonad/xmonad-session-rc ~/.xsession
    # Logout, login from lightdm/xdm/kdm/gdm


### Starting xmonad from slim

    ln -s ~/.xmonad/xmonad-session-rc ~/.xinitrc
    # Logout, login from slim



## Keyboard shortcuts

After starting xmonad, use the following keyboard shortcuts to function in
your new window manager.  I recommend you print these out so that you don't
get stranded once you logout and back in.

|                           Key Binding                        |                        Action                          |
|-------------------------------------------------------------:|:-------------------------------------------------------|
| <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>Return</kbd>            |                      Start a terminal                  |
| <kbd>Alt</kbd>+<kbd>Ctrl</kbd>+<kbd>l</kbd>                  |                        Lock screen                     |
| <kbd>Alt</kbd>+<kbd>p</kbd> | Start dmenu.  Once it comes up, type the name of a program and enter |
| <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>p</kbd> | Take screenshot in select mode. Click or click and drag to select |
| <kbd>Alt</kbd>+<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>p</kbd> | Take fullscreen screenshot. Supports multiple monitors |
| <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>c</kbd> | Close focused window |
| <kbd>Alt</kbd>+<kbd>Space</kbd> | Change workspace layout |
| <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>Space</kbd> | Change back to default workspace layout |
| <kbd>Alt</kbd>+<kbd>n</kbd> | Resize viewed windows to the correct size |
| <kbd>Alt</kbd>+<kbd>Tab</kbd> | Focus next window |
| <kbd>Alt</kbd>+<kbd>j</kbd> | Focus next window |
| <kbd>Alt</kbd>+<kbd>k</kbd> | Focus previous window |
| <kbd>Alt</kbd>+<kbd>m</kbd> | Focus master window |
| <kbd>Alt</kbd>+<kbd>Return</kbd> | Swap focused window with master window |
| <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>j</kbd> | Swap focused window with next window |
| <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>k</kbd> | Swap focused window with previous window |
| <kbd>Alt</kbd>+<kbd>h</kbd> | Shrink master window area |
| <kbd>Alt</kbd>+<kbd>l</kbd> | Expand master window area |
| <kbd>Alt</kbd>+<kbd>t</kbd> | Push floating window back into tiling |
| <kbd>Alt</kbd>+<kbd>,</kbd> | Increment number of windows in master window area |
| <kbd>Alt</kbd>+<kbd>.</kbd> | Decrement number of windows in master window area |
| <kbd>Alt</kbd>+<kbd>q</kbd> | Restart xmonad. This reloads xmonad configuration, does not logout |
| <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>q</kbd> | Quit xmonad and logout |
| <kbd>Alt</kbd>+<kbd>[1-9]</kbd> | Switch to workspace 1-9, depending on which number was pressed |
| <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>[1-9]</kbd> | Send focused window to workspace 1-9 |
| <kbd>Alt</kbd>+<kbd>w</kbd> | Focus left-most monitor (Xinerama screen 1) |
| <kbd>Alt</kbd>+<kbd>e</kbd> | Focus center-most monitor (Xinerama screen 2) |
| <kbd>Alt</kbd>+<kbd>r</kbd> | Focus right-most monitor (Xinerama screen 3) |
| <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>w</kbd> | Send focused window to workspace on left-most monitor |
| <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>e</kbd> | Send focused window to workspace on center-most monitor |
| <kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>r</kbd> | Send focused window to workspace on right-most monitor |
| <kbd>Alt</kbd>+<kbd>Left Mouse Drag</kbd> | Drag focused window out of tiling |
| <kbd>Alt</kbd>+<kbd>Right Mouse Drag</kbd> | Resize focused window, bring out of tiling if needed |
| <kbd>Alt</kbd>+<kbd>Right Mouse Drag</kbd> | Resize focused window, bring out of tiling if needed |



## Personalizing or modifying xmonad-config

Once cloned, xmonad-config is laid out as follows.

All xmonad configuration is in ~/.xmonad/xmonad.hs.  This includes
things like key bindings, colors, layouts, etc.  You may need to have some
basic understanding of [Haskell](https://wiki.haskell.org/Haskell)
in order to modify this file, but most people have no problems.

All other configuration files are in ~/.xmonad.

All scripts are in ~/.xmonad/bin/.  Scripts are provided to do things like
take screenshots, start dmenu, or fix your multi-head layout after a
fullscreen application may have turned off one of the screens. 

Colors set in the xmobar config and dmenu script are meant to coincide with the
IR_Black [terminal](https://github.com/Frizz925/base16-gnome-terminal/blob/master/schemes/base16-ir-black.sh)
and [vim](http://vimcolors.com/196/ir_black/dark) themes.

### Configuring xmobar and stalonetray for your displays

xmonad-config is pre-configured to work on one of two display setups.

1. Single 4K (3840x2160) resolution display.
2. Dual 2560x1440 displays, with the right display as the primary.

If your display setup is different, you need to edit the xmobar and
stalonetray configurations provided, probably just to adjust the geometry of
the bars for your resolution. An example would be if you're using
xmonad-config on a laptop with a lower resolution screen. In this example,
you'd simply need to edit the geometries in `xmobar-single.hs` and
`stalonetrayrc-single`.

When you first clone xmonad-config, it is setup to use the single display
configuration files.

To switch between the single and dual display setups, you must edit
`xmonad-session-rc` and `xmonad.hs` to point to the appropriate config files.

In `xmonad-session-rc` change the stalonetray line to read:

    stalonetray -c ~/.xmonad/stalonetrayrc-dual

In `xmonad.hs` change the `myXmobarrc` line to read:

     myXmobarrc = "~/.xmonad/xmobar-dual.hs"

To update geometries, edit `xmobar-single.hs` and `stalonetrayrc-single`, or
edit `xmobar-dual.hs` and `stalonetrayrc-dual`.

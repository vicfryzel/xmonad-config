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

For source code, or to contribute, see the
[xmonad-config project page](http://github.com/vicfryzel/xmonad-config).


## Requirements

* xmonad 0.9.1 or 0.9.2
* xmonad-contrib 0.9.1 or 0.9.2
* [xmobar 0.11.1 or 0.13](http://projects.haskell.org/xmobar/)
* [trayer 1.0](http://fbpanel.sourceforge.net/)
* [dmenu 4.0](http://tools.suckless.org/dmenu/)
* [yeganesh 2.2](http://dmwit.com/yeganesh/)
* [scrot 0.8](http://freshmeat.net/projects/scrot/)

### Installing requirements on [Arch Linux](http://www.archlinux.org/)

    sudo pacman -S xmonad xmonad-contrib xmobar trayer dmenu scrot \
        cabal-install
    cabal update
    cabal install yeganesh

### Installing requirements on [Ubuntu Linux](http://www.ubuntu.com/)

    sudo aptitude install xmonad libghc6-xmonad-contrib-dev xmobar trayer \
        suckless-tools scrot cabal-install
    cabal update
    cabal install yeganesh
    

## Installation

Installing xmonad-config is a matter of backing up any xmonad configuration
you may already have, cloning the git repository, and updating your PATH.

    cd
    mv .xmonad .xmonad.orig
    git clone git@github.com:vicfryzel/xmonad-config.git .xmonad
    echo "PATH=\$PATH:~/.cabal/bin:~/.xmonad/bin" >> ~/.bashrc

Once xmonad-config is installed, you also need to ensure you can actually
start xmonad.  The mechanism to do this varies based on each environment, but
here are some instructions for some common login managers.

### Starting xmonad from xdm, kdm, or gdm

    echo xmonad >> ~/.xsession
    # Note: this method will start no programs in your new session.
    # To get a terminal in your next session, press Alt+Shift+Enter.
    # Logout, login from xdm/kdm/gdm

### Starting xmonad from slim

    ln -s ~/.xmonad/xinitrc ~/.xinitrc
    # Logout, login from slim


## Personalizing or modifying xmonad-config

Once cloned, xmonad-config is laid out as follows.

All xmonad configuration is in ~/.xmonad/xmonad.hs.  This includes
things like key bindings, colors, layouts, etc.  You may need to have some
basic understanding of [Haskell](http://www.haskell.org/haskellwiki/Haskell)
in order to modify this file, but most people have no problems.

Most of the xmobar configuration is in ~/.xmonad/xmobar.hs.

All scripts are in ~/.xmonad/bin/.  Scripts are provided to do things like
take screenshots, start the system tray, start dmenu, or fix your multi-head
layout after a fullscreen application may have turned off one of the screens. 

Colors set in the xmobar config and dmenu script are meant to coincide with the
[IR_Black terminal and vim themes](http://blog.infinitered.com/entries/show/6).

# Introduction

xmonad-config is the xmonad and xmobar configuration used by Vic Fryzel.
http://github.com/vicfryzel/xmonad-config


# Requirements

* xmonad 0.9.1 or 0.9.2
* xmonad-contrib 0.9.1 or 0.9.2
* xmobar 0.11.1 or 0.13
* trayer 1.0
* dmenu 4.0
* [yeganesh 2.2](http://dmwit.com/yeganesh/)


# Installation

    cd
    mv .xmonad .xmonad.orig
    git clone git@github.com:vicfryzel/xmonad-config.git .xmonad
    echo "PATH=\$PATH:~/.xmonad/bin" >> ~/.bashrc


# Notes

Key bindings are listed in xmonad.hs.

Colors set in the xmobar config and dmenu script are meant to coincide with
the IR_Black terminal and vim themes found at
http://blog.infinitered.com/entries/show/6.

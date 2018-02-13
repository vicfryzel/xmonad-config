-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- https://github.com/vicfryzel/xmonad-config

-- This xmobar config is for dual 2560x1440 displays and meant to be used with
-- the stalonetrayrc-dual config.
--
-- If you're using dual displays with different resolutions, adjust the
-- position argument below using the given calculation.
Config {
    -- Position xmobar along the top, with stalonetray in the top right.
    -- Shrink xmobar width to ensure stalonetray and xmobar don't overlap.
    -- stalonetrayrc-dual is configured for 12 icons, each 19px wide.
    -- Because of the dual display setup, we statically position xmobar.
    -- Each display is 2560px wide. Offset left (x position) by one width.
    -- xpos = display_width = 2560
    -- If your left display is primary, then set xpos = 0.
    -- ypos = 0 (top)
    -- width = display_width - (num_icons * icon_width)
    -- width = 2560 - (12 * 19) = 2332
    -- height = 19
    position = Static { xpos = 2560, ypos = 0, width = 2332, height = 19 },
    font = "xft:monospace-8",
    bgColor = "#000000",
    fgColor = "#ffffff",
    lowerOnStart = False,
    overrideRedirect = False,
    -- We don't want xmobar on all desktops in a dual display setup.
    allDesktops = False,
    persistent = True,
    commands = [
        Run Weather "KPAO" ["-t","<tempF>F <skyCondition>","-L","64","-H","77","-n","#CEFFAC","-h","#FFB6B0","-l","#96CBFE"] 36000,
        Run MultiCpu ["-t","Cpu: <total0> <total1> <total2> <total3>","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10,
        Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Swap ["-t","Swap: <usedratio>%","-H","1024","-L","512","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Network "eth0" ["-t","Net: <rx>, <tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Date "%a %b %_d %l:%M" "date" 10,
        Run Com "getMasterVolume" [] "volumelevel" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %multicpu%   %memory%   %swap%  %eth0%   Vol: <fc=#b2b2ff>%volumelevel%</fc>   <fc=#FFFFCC>%date%</fc>"
}

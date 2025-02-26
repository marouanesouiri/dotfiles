-- import needed libraries
local awful = require("awful")

-- once
awful.spawn.once("nm-applet")
awful.spawn.once("picom")
awful.spawn.once("udiskie")
awful.spawn.once("/usr/bin/emacs --daemon")
-- awful.spawn.once("xcompmgr -c -C -f -n -I 0.1 -O 0.1 -D 5")

-- spawn
-- awful.spawn.with_shell("notify-send hello")

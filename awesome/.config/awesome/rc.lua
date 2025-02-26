pcall(require, "luarocks.loader")
local gears = require("gears")
local beautiful = require("beautiful")
require("awful.autofocus")

-- {{{ Variable definitions
-- Themes define colours, icons, font and wallpapers.
beautiful.init(gears.filesystem.get_configuration_dir() .. "theme.lua")

-- {{ Importing our config }}
require("./tags")
require("./topbar")
require("./mouse")
require("./keys")
require("./rules")
require("./notification")
require("./autostart")
require("./signales")
require("./wallpaper")

-- Reduce memory usage
collectgarbage("setpause", 110)
collectgarbage("setstepmul", 1000)

-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Adventure'

-- set the font
config.font = wezterm.font 'FantasqueSansM Nerd Font'

-- disable the tab bar
config.enable_tab_bar = false

-- edit widnow paddings
config.window_padding = {
  left = 1, right = 1,
  top = 1, bottom = 1,
}

-- disable confirmation on window close
config.window_close_confirmation = 'NeverPrompt'

-- change the fps
max_fps = 100

-- and finally, return the configuration to wezterm
return config

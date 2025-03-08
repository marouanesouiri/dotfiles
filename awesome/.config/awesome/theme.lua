local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local gears = require("gears")
local dpi = xresources.apply_dpi
local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()
local colors = require("colors")

local theme = {}

theme.font = "CaskaydiaCove Nerd Font 8"

-- borders
theme.useless_gap = 1
theme.border_width = 1
theme.border_normal = colors.normal.background
theme.border_focus = colors.normal.foreground
theme.border_marked = colors.urgent.background

-- theming tag list:
theme.taglist_bg_focus = colors.focused.background
theme.taglist_fg_focus = colors.focused.foreground
theme.taglist_bg_urgent = colors.urgent.background
theme.taglist_fg_urgent = colors.urgent.foreground
theme.taglist_bg_occupied = colors.normal.background
theme.taglist_fg_occupied = colors.focused.background
theme.taglist_bg_empty = colors.normal.background
theme.taglist_fg_empty = colors.normal.foreground
theme.taglist_bg_volatile = colors.normal.foreground
theme.taglist_fg_volatile = colors.normal.foreground

-- theming task list:
theme.tasklist_bg_focus = colors.focused.background
theme.tasklist_fg_focus = colors.focused.foreground
theme.tasklist_bg_urgent = colors.urgent.background
theme.tasklist_fg_urgent = colors.urgent.foreground

-- theming title bar:
theme.titlebar_bg_normal = colors.normal.background
theme.titlebar_fg_normal = colors.normal.foreground
theme.titlebar_bg_focus = colors.focused.background
theme.titlebar_fg_focus = colors.focused.foreground

-- theming task list:
theme.tooltip_font = theme.font
theme.tooltip_opacity = 1
theme.tooltip_bg_color = theme.bg_normal
theme.tooltip_fg_color = theme.fg_normal
theme.tooltip_border_width = 2
theme.tooltip_border_color = theme.border_normal

-- theming task list:
theme.mouse_finder_color = "#ff0000"
theme.mouse_finder_timeout = 2
theme.mouse_finder_animate_timeout = 0.5
theme.mouse_finder_radius = 8
theme.mouse_finder_factor = 0.5

-- theming prompt:
theme.prompt_font = theme.font
theme.prompt_bg = theme.bg_normal
theme.prompt_fg = theme.fg_normal
theme.prompt_bg_cursor = theme.bg_focus
theme.prompt_fg_cursor = theme.fg_focus

-- theming hoskeys popup:
theme.hotkeys_font = theme.font
theme.hotkeys_bg = colors.normal.bg_normal
theme.hotkeys_fg = colors.normal.fg_normal
theme.hotkeys_border_width = 2
theme.hotkeys_border_color = colors.focused.bg_normal
theme.hotkeys_shape = gears.shape.rounded_rect
theme.hotkeys_opacity = 1.0
theme.hotkeys_modifiers_fg = theme.fg_normal
theme.hotkeys_label_bg = theme.bg_normal
theme.hotkeys_label_fg = theme.fg_normal
-- theme.hotkeys_group_margin = dpi(4)
theme.hotkeys_description_font = theme.font

-- theming notifications:
theme.notification_font = theme.font
theme.notification_position = "bottom_right"
theme.notification_bg = theme.bg_normal
theme.notification_fg = theme.fg_normal
theme.notification_width = 320
theme.notification_height = 120
theme.notification_margin = 10
theme.notification_border_width = 2
theme.notification_shape = gears.shape.rounded_rect
theme.notification_opacity = 1

-- theming menubar:
theme.menubar_fg_normal = colors.normal.background
theme.menubar_bg_normal = colors.normal.background
theme.menubar_border_width = dpi(0)
theme.menubar_border_color = colors.normal.background
theme.menubar_fg_normal = colors.focused.foreground
theme.menubar_bg_normal = colors.focused.background

-- theming menu:
theme.menu_font = theme.font
theme.menu_bg = theme.bg_normal
theme.menu_height = dpi(20)
theme.menu_width = dpi(160)
theme.menu_border_color = "#0000"
theme.menu_border_width = dpi(2)
theme.menu_submenu = "ᐅ "

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(taglist_square_size, colors.normal.foreground)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(taglist_square_size, colors.normal.foreground)

-- Define the image to load
theme.titlebar_close_button_normal = themes_path .. "default/titlebar/close_normal.png"
theme.titlebar_close_button_focus = themes_path .. "default/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path .. "default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus = themes_path .. "default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path .. "default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive = themes_path .. "default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path .. "default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active = themes_path .. "default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path .. "default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive = themes_path .. "default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path .. "default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active = themes_path .. "default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path .. "default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive = themes_path .. "default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path .. "default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active = themes_path .. "default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path .. "default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive = themes_path .. "default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path .. "default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active = themes_path .. "default/titlebar/maximized_focus_active.png"

theme.wallpaper = themes_path .. "default/background.png"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path .. "default/layouts/fairhw.png"
theme.layout_fairv = themes_path .. "default/layouts/fairvw.png"
theme.layout_floating = themes_path .. "default/layouts/floatingw.png"
theme.layout_magnifier = themes_path .. "default/layouts/magnifierw.png"
theme.layout_max = themes_path .. "default/layouts/maxw.png"
theme.layout_fullscreen = themes_path .. "default/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path .. "default/layouts/tilebottomw.png"
theme.layout_tileleft = themes_path .. "default/layouts/tileleftw.png"
theme.layout_tile = themes_path .. "default/layouts/tilew.png"
theme.layout_tiletop = themes_path .. "default/layouts/tiletopw.png"
theme.layout_spiral = themes_path .. "default/layouts/spiralw.png"
theme.layout_dwindle = themes_path .. "default/layouts/dwindlew.png"
theme.layout_cornernw = themes_path .. "default/layouts/cornernww.png"
theme.layout_cornerne = themes_path .. "default/layouts/cornernew.png"
theme.layout_cornersw = themes_path .. "default/layouts/cornersww.png"
theme.layout_cornerse = themes_path .. "default/layouts/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(theme.menu_height, theme.bg_focus, theme.fg_focus)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80

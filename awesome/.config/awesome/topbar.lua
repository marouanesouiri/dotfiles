-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
local wibox = require("wibox")
local colors = require("colors")

-- Text widget function
local function create_text(text)
	local box = wibox.widget.textbox()
	box:set_text(text)
	return box
end

-- Keyboard layout widget function
local function create_keyboardlayout_widget()
	return awful.widget.keyboardlayout()
end

-- Clock widget function with background and text color customization
local function create_clock_widget()
	local clock = wibox.widget.textclock("ⵜⵉⵎⴻ:%H:%M")

	-- Wrap the widget in a background container and set bg/fg colors
	local container = wibox.container.background(clock)

	return container
end

-- Date widget function
local function create_date_widget()
	return wibox.widget.textclock("ⴷⴰⵜⴻ:%Y/%m/%d")
end

-- Battery widget function
local function create_battery_widget()
	return awful.widget.watch('bash -c "cat /sys/class/power_supply/BAT0/capacity"', 30, function(widget, stdout)
		local battery_level = tonumber(stdout)
		widget:set_text("ⴱⴰⵜ:" .. battery_level .. "%")
	end)
end

-- layoutbox widget function
local function create_layoutbox(s)
	local box = awful.widget.layoutbox(s)
	-- We need one layoutbox per screen.
	box:buttons(gears.table.join(
		awful.button({}, 1, function()
			awful.layout.inc(1)
		end),
		awful.button({}, 3, function()
			awful.layout.inc(-1)
		end),
		awful.button({}, 4, function()
			awful.layout.inc(1)
		end),
		awful.button({}, 5, function()
			awful.layout.inc(-1)
		end)
	))
	return box
end

-- Systray widget function
local function create_systray()
	local tray = wibox.widget.systray()
	return tray
end

-- taglist widget function
local function create_taglist(s)
	return awful.widget.taglist({
		screen = s,
		filter = awful.widget.taglist.filter.all,
		buttons = gears.table.join(
			awful.button({}, 1, function(t)
				t:view_only()
			end),
			awful.button({ modkey }, 1, function(t)
				if client.focus then
					client.focus:move_to_tag(t)
				end
			end),
			awful.button({}, 3, awful.tag.viewtoggle),
			awful.button({ modkey }, 3, function(t)
				if client.focus then
					client.focus:toggle_tag(t)
				end
			end),
			awful.button({}, 4, function(t)
				awful.tag.viewnext(t.screen)
			end),
			awful.button({}, 5, function(t)
				awful.tag.viewprev(t.screen)
			end)
		),
	})
end

-- tasklist widget function
local function create_tasklist(s)
	return awful.widget.tasklist {
		screen = s,
		filter = awful.widget.tasklist.filter.currenttags,
		layout   = {
			spacing = 10,
			layout  = wibox.layout.flex.horizontal
		},
		buttons = gears.table.join(
			awful.button({}, 1, function(c)
				if c == client.focus then
					c.minimized = true
				else
					c:emit_signal("request::activate", "tasklist", { raise = true })
				end
			end),
			awful.button({}, 3, function()
				awful.menu.client_list({ theme = { width = 250 } })
			end),
			awful.button({}, 4, function()
				awful.client.focus.byidx(1)
			end),
			awful.button({}, 5, function()
				awful.client.focus.byidx(-1)
			end)
		),
	}
end

-- Create wibox for each screen
awful.screen.connect_for_each_screen(function(s)
	-- Create the wibox
	s.mywibox = awful.wibar({
		position = "bottom",
		screen = s,
		visible = true,
		type = "dock",
		height = 16, -- Adjust the height for horizontal wibox
		-- width = s.geometry.width * 0.80, -- Adjust the width for vertical wibox
		bg = colors.normal.background, -- Transparent background
		fg = colors.normal.foreground, -- Text color
		-- shape = gears.shape.rounded_rect, -- Rounded corners
		border_width = 1,
		border_color = colors.normal.foreground, -- Border color
	})

	-- Add widgets to the wibox
	s.mywibox:setup({
		layout = wibox.layout.align.horizontal,
		{ -- Left widgets
			layout = wibox.layout.fixed.horizontal,
			create_taglist(s),
			s.mypromptbox,
		},
		create_tasklist(s), -- Middle widget
		{ -- Right widgets
			layout = wibox.layout.fixed.horizontal,
			create_text("<< "),
			create_date_widget(),
			create_text("  ⃓ "),
			create_clock_widget(),
			create_text("  ⃓ "),
			-- create_battery_widget(),
			create_systray(),
			create_layoutbox(s),
		},
	})
end)

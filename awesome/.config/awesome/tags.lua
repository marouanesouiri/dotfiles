local awful = require("awful")

-- ================ Screen 1 tags ================
awful.tag.add(_, {
	name = "1:ⵢⴰⵏ", -- The tag name
	id = "1", -- The tap id
	screen = screen[1], -- Assign the tag to the first screen
	layout = awful.layout.suit.tile, -- Set a specific layout for the tag
	gap = 2, -- Set gaps between clients in the tag
	selected = true, -- Make this tag the selected one on startup
	gap_single_client = false,
	-- master_width_factor = 0.6,
})

awful.tag.add(_, {
	name = "2:ⵙⵉⵏ", -- The Tag name
	id = "2", -- The tag name
	screen = screen[1], -- Assign the tag to the first screen
	layout = awful.layout.suit.tile, -- Set a specific layout for the tag
	gap = 2, -- Set gaps between clients in the tag
	selected = false, -- Make this tag the selected one on startup
	gap_single_client = false,
	-- master_width_factor = 0.6,
})

awful.tag.add(_, {
	name = "3:ⴽⵕⴰⴹ", -- The tag name
	id = "3", -- The tag id
	screen = screen[1], -- Assign the tag to the first screen
	layout = awful.layout.suit.tile, -- Set a specific layout for the tag
	gap = 2, -- Set gaps between clients in the tag
	selected = false, -- Make this tag the selected one on startup
	gap_single_client = false,
	-- master_width_factor = 0.6,
})

awful.tag.add(_, {
	name = "4:ⴽⴽⵓⵣ", -- The tag name
	id = "4", -- The tag id
	screen = screen[1], -- Assign the tag to the first screen
	layout = awful.layout.suit.tile, -- Set a specific layout for the tag
	gap = 2, -- Set gaps between clients in the tag
	selected = false, -- Make this tag the selected one on startup
	gap_single_client = false, -- Set to false if you want to remove gaps if only one window is opened
	-- master_width_factor = 0.6,
})

awful.tag.add(_, {
	name = "5:ⵙⵎⵎⵓⵙ", -- The tag name
	id = "5", -- The tag id
	screen = screen[1], -- Assign the tag to the first screen
	layout = awful.layout.suit.tile, -- Set a specific layout for the tag
	gap = 2, -- Set gaps between clients in the tag
	selected = false, -- Make this tag the selected one on startup
	gap_single_client = fals, -- Set to false if you want to remove gaps if only one window is opened
	-- master_width_factor = 0.6,
})

awful.tag.add(_, {
	name = "6:ⵚⴹⵉⵚ", -- The tag name
	id = "6", -- The tag id
	screen = screen[1], -- Assign the tag to the first screen
	layout = awful.layout.suit.tile, -- Set a specific layout for the tag
	gap = 2, -- Set gaps between clients in the tag
	selected = false, -- Make this tag the selected one on startup
	gap_single_client = false, -- Set to false if you want to remove gaps if only one window is opened
	-- master_width_factor = 0.6,
})

awful.tag.add(_, {
	name = "7:ⵙⴰ", -- The tag name
	id = "7", -- The tag id
	screen = screen[1], -- Assign the tag to the first screen
	layout = awful.layout.suit.tile, -- Set a specific layout for the tag
	gap = 2, -- Set gaps between clients in the tag
	selected = false, -- Make this tag the selected one on startup
	gap_single_client = false, -- Set to false if you want to remove gaps if only one window is opened
	-- master_width_factor = 0.6,
})

awful.tag.add(_, {
	name = "8:ⵜⴰⵎ", -- The tag name
	id = "8", -- The tag id
	screen = screen[1], -- Assign the tag to the first screen
	layout = awful.layout.suit.tile, -- Set a specific layout for the tag
	gap = 2, -- Set gaps between clients in the tag
	selected = false, -- Make this tag the selected one on startup
	gap_single_client = false, -- Set to false if you want to remove gaps if only one window is opened
	-- master_width_factor = 0.6,
})

awful.tag.add(_, {
	name = "9:ⵜⵥⴰ", -- The tag name
	id = "9", -- The tag id
	screen = screen[1], -- Assign the tag to the first screen
	layout = awful.layout.suit.tile, -- Set a specific layout for the tag
	gap = 2, -- Set gaps between clients in the tag
	selected = false, -- Make this tag the selected one on startup
	gap_single_client = false, -- Set to false if you want to remove gaps if only one window is opened
	-- master_width_factor = 0.6,
})

-- Create a hidden scratchpad tag (workspace)
--awful.tag.add("", {
--	name = "[]=", -- The tag name
--	screen = awful.screen.focused(),
--	layout = awful.layout.suit.tile,
--	selected = false,
--	gap_single_client = false,
--	hidden = true, -- This hides the tag from the workspace widget
--})

-- Colors configuration
local colors = {}


-- Change true with false if you dont want to use pywal
local usePywal = true
if usePywal then
	local pywall = {}
	for line in io.lines(os.getenv("HOME").."/.cache/wal/colors") do
		table.insert(pywall, line)
	end

	-- colors.normal
	colors.normal = {}
	colors.normal.background = pywall[1]
	colors.normal.foreground = pywall[8]

	-- colors.focused
	colors.focused = {}
	colors.focused.background = pywall[3]
	colors.focused.foreground = pywall[8]

	-- colors.selection
	colors.selection = {}
	colors.selection.background = pywall[4]
	colors.selection.foreground = pywall[8]

	-- colors.urgent
	colors.urgent = {}
	colors.urgent.background = pywall[5]
	colors.urgent.foreground = pywall[8]

	-- colors.occupied
	colors.occupied = {}
	colors.occupied.background = pywall[6]
	colors.occupied.foreground = pywall[8]

	-- colors.empty
	colors.empty = {}
	colors.empty.background = pywall[7]
	colors.empty.foreground = pywall[8]
else
	-- colors.normal
	colors.normal = {}
	colors.normal.background = "#040404"
	colors.normal.foreground = "#c0c0c0"

	-- colors.focused
	colors.focused = {}
	colors.focused.background = "#4F5050"
	colors.focused.foreground = "#c0c0c0"

	-- colors.selection
	colors.selection = {}
	colors.selection.background = "#5F5F5F"
	colors.selection.foreground = "#c0c0c0"

	-- colors.urgent
	colors.urgent = {}
	colors.urgent.background = "#6A6B6B"
	colors.urgent.foreground = "#c0c0c0"

	-- colors.occupied
	colors.occupied = {}
	colors.occupied.background = "#7E7F80"
	colors.occupied.foreground = "#c0c0c0"

	-- colors.empty
	colors.empty = {}
	colors.empty.background = "#9c9c9c"
	colors.empty.foreground = "#c0c0c0"
end

return colors

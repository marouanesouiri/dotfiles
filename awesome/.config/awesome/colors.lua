-- Define 16 colors base
local pywall = {}
for line in io.lines("/home/me/.cache/wal/colors") do
	table.insert(pywall, line)
end

-- Colors configuration
local colors = {}

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

return colors

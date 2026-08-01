local common = require("hyprland.keybinds.common")
local mainMod = common.mainMod

hl.bind(mainMod .. " + U", hl.dsp.window.move({ direction = "l" }))
hl.bind(mainMod .. " + SHIFT + U", hl.dsp.window.move({ direction = "r" }))

local direction_to_keys = {
	l = { "left", "H" },
	r = { "right", "L" },
}

-- Swap column with mainMod + arrow or in vim mode
for direction, keys in pairs(direction_to_keys) do
	for _, key in ipairs(keys) do
		hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.layout("swapcol " .. direction))
	end
end

local direction_to_resize_config = {
	l = "-conf",
	r = "+conf",
}

-- Resize column
for direction, keys in pairs(direction_to_keys) do
	for _, key in ipairs(keys) do
		hl.bind(mainMod .. " + CTRL + " .. key, hl.dsp.layout("colresize " .. direction_to_resize_config[direction]), {
			repeating = true,
		})
	end
end

local common = require("hyprland.keybinds.common")
local mainMod = common.mainMod

hl.bind(mainMod .. " + U", hl.dsp.layout("togglesplit"))

local direction_to_keys = {
	left = { "left", "H" },
	right = { "right", "L" },
	up = { "up", "K" },
	down = { "down", "J" },
}

-- Swap window with mainMod + arrow or in vim mode
for direction, keys in pairs(direction_to_keys) do
	for _, key in ipairs(keys) do
		hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.swap({ direction = direction }))
	end
end

local direction_to_resize_config = {
	left = { x = -20, y = 0, relative = true },
	right = { x = 20, y = 0, relative = true },
	up = { x = 0, y = -20, relative = true },
	down = { x = 0, y = 20, relative = true },
}

-- Resize active window
for direction, keys in pairs(direction_to_keys) do
	for _, key in ipairs(keys) do
		hl.bind(mainMod .. " + CTRL + " .. key, hl.dsp.window.resize(direction_to_resize_config[direction]), {
			repeating = true,
		})
	end
end

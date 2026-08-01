local mainMod = "SUPER"
local variables = require("hyprland.variables")

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(variables.terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(variables.fileManager))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd(variables.launcher))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd(variables.editor))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd(variables.browser))

hl.bind(mainMod .. " + Q", hl.dsp.window.close()) -- Close current window
hl.bind(mainMod .. " + CTRL + SHIFT + M", hl.dsp.exit())
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle", layout_aware = false })) -- Toggle current window fullscreen
hl.bind(mainMod .. " + D", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle", layout_aware = false })) -- Toggle current window maximize
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.float({ action = "toggle" })) -- Toggle current window floating
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.float({ action = "toggle" }), { click = true }) -- Toggle current window floating with mouse
hl.bind("ALT + TAB", hl.dsp.window.cycle_next(), { click = true }) -- Focuses next window

local direction_to_keys = {
	left = { "left", "H" },
	right = { "right", "L" },
	up = { "up", "K" },
	down = { "down", "J" },
}

-- Move focus
for direction, keys in pairs(direction_to_keys) do
	for _, key in ipairs(keys) do
		hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ direction = direction }))
	end
end

-- Noctalia shell
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call wallpaper toggle"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call darkMode toggle"))
hl.bind(mainMod .. " + ALT + L", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call lockScreen lock"))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call launcher clipboard"))

-- Switch workspaces with mainMod + [0-9]
for i = 1, 10 do
	local key = i % 10
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
end

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e-1" }))

-- Move existing workspaces with mainMod + []
hl.bind(mainMod .. " + COMMA", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + PERIOD", hl.dsp.focus({ workspace = "e+1" }))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +2%"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -2%"),
	{ locked = true, repeating = true }
)
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("pactl set-source-volume @DEFAULT_SOURCE@ toggle"), { locked = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Player management (require playerctl)
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

hl.bind("XF86Tools", hl.dsp.exec_cmd("spotify"))
hl.bind("XF86Calculator", hl.dsp.exec_cmd("gnome-calculator"))

return {
	mainMod = mainMod,
}

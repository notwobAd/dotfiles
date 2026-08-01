require("hyprland.envs")

require("hyprland.monitors")
require("hyprland.devices")

require("hyprland.autostarts")
require("hyprland.general")
require("hyprland.animations")
require("hyprland.gestures")
require("hyprland.keybinds.common")

local layout = hl.get_config("general.layout")

if layout == "dwindle" then
	require("hyprland.keybinds.dwindle")
elseif layout == "scrolling" then
	require("hyprland.keybinds.scrolling")
end

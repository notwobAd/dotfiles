local colors = require("hyprland.colors")

hl.config({
	general = {
		border_size = 3,
		gaps_in = 3,
		gaps_out = 5,
		col = {
			active_border = { colors = { colors.primary, colors.tertiary }, angle = 45 },
			inactive_border = colors.outline,
		},
		resize_on_border = true,
		hover_icon_on_border = true,
		allow_tearing = false,
		layout = "dwindle",
	},
})

hl.config({
	decoration = {
		rounding = 10,
		rounding_power = 2,

		-- Change transparency of focused and unfocused windows
		active_opacity = 0.93,
		inactive_opacity = 0.8,

		shadow = {
			enabled = true,
			range = 10,
			render_power = 4,
			color = colors.shadow,
			color_inactive = colors.shadow,
		},
		blur = {
			enabled = true,
			size = 3,
			passes = 1,
			xray = true,
			vibrancy = 0.1696,
			popups = true,
			input_methods = false,
		},
	},
})

hl.config({
	animations = {
		enabled = true,
		workspace_wraparound = true,
	},
})

hl.config({
	dwindle = {
		preserve_split = true,
	},
})

hl.config({
	master = {
		new_status = "master",
	},
})

hl.config({
	scrolling = {
		fullscreen_on_one_column = true,
	},
})

hl.config({
	misc = {
		force_default_wallpaper = -1, -- Set to 0 or 1 to disable the anime mascot wallpapers
		disable_hyprland_logo = true, -- If true disables the random hyprland logo / anime girl background. :(
	},
})

hl.config({
	input = {
		kb_layout = "us",
		kb_options = "caps:swapescape",
		repeat_rate = 25,
		repeat_delay = 300,
		follow_mouse = 1,
		sensitivity = -0.7, -- -1.0 - 1.0, 0 means no modification.
		touchpad = {
			natural_scroll = false,
		},
	},
})

hl.config({
	binds = {
		drag_threshold = 10,
	},
})

hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = {
		class = ".*",
	},
	suppress_event = "maximize",
})

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
		focus = false,
	},
})

hl.layer_rule({
	name = "noctalia",
	match = {
		namespace = "noctalia-background-.*$",
	},
	ignore_alpha = 0.5,
	blur = true,
	blur_popups = true,
})

local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("JetBrains Mono")
config.font_size = 13

config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"
config.window_background_opacity = 0.75
config.automatically_reload_config = true

config.default_cursor_style = "SteadyBar"

config.window_decorations = "NONE"

config.window_padding = {
	left = 20,
	right = 20,
	top = 0,
	bottom = 10,
}

config.keys = {
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
}

return config

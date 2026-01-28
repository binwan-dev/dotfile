local wezterm = require("wezterm")
local config = {}

-- font
config.font_size = 14
config.font = wezterm.font("Maple Mono Normal NF CN", { weight = "Medium", stretch = "Normal", style = "Normal" })

-- colors
local appearance_themes = {
	Light = "Atom One Light",
	Dark = "Doom One",
}
config.color_scheme = appearance_themes[wezterm.gui.get_appearance()] or dark_theme

-- view
config.enable_tab_bar = false

-- cursor
config.default_cursor_style = "SteadyBar"

return config

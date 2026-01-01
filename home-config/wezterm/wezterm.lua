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

-- config.enable_csi_u_key_encoding = true

-- keybindings
config.keys = {
	-- 禁用 Ctrl+Shift+C (复制)
	{
		key = "p",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SendKey({
			key = "p",
			mods = "CTRL|ALT",
		}),
	},
	-- 禁用 Ctrl+Shift+N (新窗口)
	{
		key = "n",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SendKey({
			key = "n",
			mods = "CTRL|ALT",
		}),
	},
	-- 禁用 Ctrl+Shift+W (关闭窗口)
	{
		key = "f",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SendKey({
			key = "f",
			mods = "CTRL|ALT",
		}),
	},
	-- 禁用 Ctrl+Shift+W (关闭窗口)
	{
		key = "b",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SendKey({
			key = "b",
			mods = "CTRL|ALT",
		}),
	},
	-- 禁用 Ctrl+Shift+W (关闭窗口)
	{
		key = "a",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SendKey({
			key = "a",
			mods = "CTRL|ALT",
		}),
	},
	-- 禁用 Ctrl+Shift+W (关闭窗口)
	{
		key = "e",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SendKey({
			key = "e",
			mods = "CTRL|ALT",
		}),
	},
}

-- config.disable_default_key_bindings = true
return config

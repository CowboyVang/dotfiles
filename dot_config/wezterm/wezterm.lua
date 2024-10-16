-- Pull in the wezterm API

local wezterm = require("wezterm")

-- This will hold the configuration.

local config = wezterm.config_builder()

config = {}

config.enable_tab_bar = false

config.max_fps = 75
config.animation_fps = 75
--config.cursor_blink_ease_in = 'Constant'
--config.cursor_blink_ease_out = 'Constant'

config.window_background_opacity = 1.0
config.use_resize_increments = true

config.font_size = 13 
config.underline_thickness = 1
config.underline_position = -4.0
config.freetype_load_target = "Normal"
config.bold_brightens_ansi_colors = false
--config.freetype_render_target = 'Normal'
--config.freetype_load_flags = 'NO_HINTING'

config.audible_bell = "Disabled"

config.warn_about_missing_glyphs = false
config.font = wezterm.font("MonoLisa Variable", { weight = "Regular", italic = false })

config.default_cursor_style = "BlinkingBlock"
config.window_decorations = "RESIZE"
config.window_padding = {
	left = 30,
	right = 30,
	top = 30,
	bottom = 30,
}

config.colors = { 

  foreground    = "#D8DEE9",
  background    = '#191D24',
  cursor_bg     = "#D8DEE9",
  cursor_border = "#D8DEE9",
  cursor_fg     = "#242933",
  selection_fg  = "#D8DEE9",
  selection_bg  = "#2E3440",

  ansi          = { "#191D24", "#BF616A", "#A3BE8C", "#EBCB8B", "#81A1C1",  "#B48EAD", "#8FBCBB", "#D8DEE9", },
  brights       = { "#3B4252", "#D06F79", "#B1D196", "#F0D399", "#88C0D0",  "#C895BF", "#93CCDC", "#E5E9F0", },

}

return config

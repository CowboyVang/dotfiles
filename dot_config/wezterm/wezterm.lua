-- Pull in the wezterm API

local wezterm = require("wezterm")

-- This will hold the configuration.

local config = wezterm.config_builder()

config = {}
-- set_environment_variables = {
    -- COLORTERM="truecolor",
-- }
config.enable_tab_bar = false

config.front_end = "OpenGL"
config.max_fps = 75
config.animation_fps = 75
config.cursor_blink_ease_in = 'Constant'
--config.cursor_blink_ease_out = 'Constant'

config.window_background_opacity = 1
config.use_resize_increments = true

config.font_size = 13 
config.underline_thickness = 1
config.underline_position = -4.0
config.freetype_load_target = "Normal"
config.bold_brightens_ansi_colors = true
config.freetype_render_target = 'Normal'
config.freetype_load_flags = 'NO_HINTING'

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
-- copy_mode_active_highlight_fg = { AnsiColor = 'Black' },
-- copy_mode_inactive_highlight_bg = { Color = '#52ad70' },
-- copy_mode_inactive_highlight_fg = { AnsiColor = 'White' },

-- quick_select_label_bg = { Color = 'peru' },
-- quick_select_label_fg = { Color = '#ffffff' },
-- quick_select_match_bg = { AnsiColor = 'Navy' },
-- quick_select_match_fg = { Color = '#ffffff' },
config.color_scheme = "nordic"

return config

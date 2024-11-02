local wezterm = require 'wezterm';
local act = wezterm.action
local c = wezterm.config_builder()

c.font = wezterm.font("Fira Code")
c.font_size = 12.0
c.window_background_opacity = 0.9
c.enable_tab_bar = false
c.window_decorations="RESIZE"
c.max_fps = 144


c.keys = {
  -- paste from the clipboard
  { key = 'v', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },

  -- paste from the primary selection
  { key = 'v', mods = 'CTRL', action = act.PasteFrom 'PrimarySelection' },
}

return c

-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Dracula (Official)'

config.default_prog = { 'pwsh.exe' }

config.window_background_opacity = 0.9

local keys = {}

-- Ctrl + 1 to Ctrl + 9 to switch tabs
for i = 1, 9 do
  table.insert(keys, {
    key = tostring(i),
    mods = "ALT",
    action = wezterm.action { ActivateTab = i - 1 }
  })
end

config.keys = keys

-- and finally, return the configuration to wezterm
return config

---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

theme.font          = "JetBrainsMono NFM 11"

theme.bg_normal     = "#000000ff"
theme.bg_focus      = "#000000ff"
theme.bg_urgent     = "#ffffffff"
theme.bg_minimize   = "#000000ff"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#ffffffff"
theme.fg_focus      = "#ffffffff"
theme.fg_urgent     = "#ea999c"
theme.fg_minimize   = "#99d1db"

theme.useless_gap   = dpi(2)
theme.border_normal = "#1e1e2e"
theme.border_focus  = "#ffffffff"
theme.border_marked = "#000000ff"
theme.border_radius = dpi(5)
theme.border_width = dpi(2)

theme.menu_height = 30
theme.menu_width = 120

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

--Signals
client.connect_signal("focus", function(c)
    c.border_color = theme.border_focus end)
client.connect_signal("unfocus", function(c)
    c.border_color = theme.border_normal end)

theme.icon_theme = "dracula-icons"

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80

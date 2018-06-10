--[[

     Multicolor Awesome WM theme 2.0
     github.com/lcpz

--]]

local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")

local vicious = require("vicious")
vicious.contrib = require("vicious.contrib")
local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local os = { getenv = os.getenv, setlocale = os.setlocale }
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

local theme                                     = {}

theme.confdir                                   = os.getenv("HOME") .. "/.config/awesome/themes/bich0azul-blue"
theme.wallpaper                                 = theme.confdir .. "/wall.jpg"

theme.font                                      = "Fira Mono Regular 10"
theme.taglist_font                              = "Fira Mono Regular 13"--"Noto Sans Regular 13"

theme.menu_bg_normal                            = "#222222"
theme.menu_bg_focus                             = "#A7A099"

theme.bg_normal                                 = "#222222"
theme.bg_focus                                  = "#A7A099"
theme.bg_urgent                                 = "#222222"
theme.bg_minimize                               = "#444444"

theme.fg_normal                                 = "#aaaaaa"
theme.fg_focus                                  = "#ffffff"--"#16BBF5"--"#ff8c00"
theme.fg_urgent                                 = "#ff8c00"--"#af1d18"
theme.fg_minimize                               = "#ffffff"

theme.border_width                              = dpi(2)
theme.border_normal                             = "#1c2022"
theme.border_focus                              = "#DADADA"
theme.border_marked                             = "#3ca4d8"

theme.menu_border_width                         = 0
theme.menu_height                               = dpi(20)
theme.menu_width                                = dpi(120)
--theme.menu_submenu_icon                         = theme.confdir .. "/icons/submenu.png"
theme.menu_fg_normal                            = "#aaaaaa"
theme.menu_fg_focus                             = "#16BBF5"
--theme.menu_bg_normal                            = "#050505dd"
theme.menu_bg_focus                             = "#050505dd"

--theme.bg_systray                                = --"#2B2E38"--theme.bg_normal
--theme.systray_icon_spacing                      = 0

theme.widget_temp                               = theme.confdir .. "/icons/temp.png"
theme.widget_uptime                             = theme.confdir .. "/icons/ac.png"
theme.widget_cpu                                = theme.confdir .. "/icons/cpu.png"
theme.widget_weather                            = theme.confdir .. "/icons/dish.png"
theme.widget_fs                                 = theme.confdir .. "/icons/fs.png"
theme.widget_mem                                = theme.confdir .. "/icons/mem.png"
theme.widget_netdown                            = theme.confdir .. "/icons/net_down.png"
theme.widget_netup                              = theme.confdir .. "/icons/net_up.png"
theme.widget_mail                               = theme.confdir .. "/icons/mail.png"
theme.widget_batt                               = theme.confdir .. "/icons/bat.png"
theme.widget_clock                              = theme.confdir .. "/icons/clock.png"
theme.widget_vol                                = theme.confdir .. "/icons/spkr.png"
theme.widget_music                              = theme.confdir .. "/icons/note.png"
theme.widget_music_on                           = theme.confdir .. "/icons/note.png"
theme.widget_music_pause                        = theme.confdir .. "/icons/pause.png"
theme.widget_music_stop                         = theme.confdir .. "/icons/stop.png"
theme.taglist_squares_sel                       = theme.confdir .. "/icons/square_a.png"
theme.taglist_squares_unsel                     = theme.confdir .. "/icons/square_b.png"
theme.taglist_bg_focus                          = "#222222"
theme.tasklist_fg_focus                         = "#362b18"
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true
theme.prompt_fg                                 = "#16BBF5"
theme.prompt_bg_cursor                          = "#16BBF5"
theme.useless_gap                               = dpi(6)

theme.layout_fairh                              = theme.confdir .. "/layouts/fairhw.png"
theme.layout_fairv                              = theme.confdir .. "/layouts/fairvw.png"
theme.layout_floating                           = theme.confdir .. "/layouts/floatingw.png"
theme.layout_magnifier                          = theme.confdir .. "/layouts/magnifierw.png"
theme.layout_max                                = theme.confdir .. "/layouts/maxw.png"
theme.layout_fullscreen                         = theme.confdir .. "/layouts/fullscreenw.png"
theme.layout_tilebottom                         = theme.confdir .. "/layouts/tilebottomw.png"
theme.layout_tileleft                           = theme.confdir .. "/layouts/tileleftw.png"
theme.layout_tile                               = theme.confdir .. "/layouts/tilew.png"
theme.layout_tiletop                            = theme.confdir .. "/layouts/tiletopw.png"
theme.layout_spiral                             = theme.confdir .. "/layouts/spiralw.png"
theme.layout_dwindle                            = theme.confdir .. "/layouts/dwindlew.png"
theme.layout_cornernw                           = theme.confdir .. "/layouts/cornernww.png"
theme.layout_cornerne                           = theme.confdir .. "/layouts/cornernew.png"
theme.layout_cornersw                           = theme.confdir .. "/layouts/cornersww.png"
theme.layout_cornerse                           = theme.confdir .. "/layouts/cornersew.png"

theme.titlebar_close_button_normal              = theme.confdir .. "/icons/titlebar/close_normal.png"
theme.titlebar_close_button_focus               = theme.confdir .. "/icons/titlebar/close_focus.png"
theme.titlebar_minimize_button_normal           = theme.confdir .. "/icons/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus            = theme.confdir .. "/icons/titlebar/minimize_focus.png"
theme.titlebar_ontop_button_normal_inactive     = theme.confdir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive      = theme.confdir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active       = theme.confdir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active        = theme.confdir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_sticky_button_normal_inactive    = theme.confdir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive     = theme.confdir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active      = theme.confdir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active       = theme.confdir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_floating_button_normal_inactive  = theme.confdir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive   = theme.confdir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active    = theme.confdir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active     = theme.confdir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_maximized_button_normal_inactive = theme.confdir .. "/icons/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme.confdir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = theme.confdir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = theme.confdir .. "/icons/titlebar/maximized_focus_active.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    dpi(64), "#DAB51E"
)

theme.taglist_fg_focus = "#16BBF5"--"#DAB51E"
-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.taglist_fg_focus --theme.fg_normal
)

local markup = lain.util.markup

-- Textclock
--os.setlocale(os.getenv("LANG")) -- to localize the clock
--local clockicon = wibox.widget.imagebox(theme.widget_clock)
--local mytextclock = wibox.widget.textclock(markup("#7788af", "%A %d %B ") .. markup("#535f7a", ">") .. markup("#de5e1e", " %H:%M "))
--mytextclock.font = theme.font

-- Textclock
local markup = lain.util.markup
mytextclock = wibox.widget.textclock (markup("#16bbf5","%a %b %d, %H:%M"))
--("<span color=\"#16bbf5\">%a %b %d, %H:%M</span>")

-- Others
bracketR = wibox.widget.textbox()
bracketR:set_text("]")
colbracketR = wibox.widget.background()
colbracketR:set_widget(bracketR)
colbracketR:set_fg("#16BBF5")

bracketL = wibox.widget.textbox()
bracketL:set_text("[")
colbracketL = wibox.widget.background()
colbracketL:set_widget(bracketL)
colbracketL:set_fg("#16BBF5")

space = wibox.widget.textbox()
space:set_text(" ")

lessthan = wibox.widget.textbox()
lessthan:set_text("< ")

greaterthan = wibox.widget.textbox()
greaterthan:set_text(" > ")

dot = wibox.widget.textbox()
dot:set_text("· ")

conky_widget = wibox.widget.textbox()
conky_widget:set_text("-")

labelarchlinux = wibox.widget.textbox()
labelarchlinux:set_text("Archlinux ")
labelarchlinuxcol = wibox.widget.background()
labelarchlinuxcol:set_widget(labelarchlinux)
labelarchlinuxcol:set_fg("#16BBF5")

labelvol = wibox.widget.textbox()
labelvol:set_text("Vol ")
labelvolcol = wibox.widget.background()
labelvolcol:set_widget(labelvol)
labelvolcol:set_fg("#16BBF5")

labelbattery = wibox.widget.textbox()
labelbattery:set_text("Battery ")
labelbatterycol = wibox.widget.background()
labelbatterycol:set_widget(labelbattery)
labelbatterycol:set_fg("#16BBF5")

labelcpu = wibox.widget.textbox()
labelcpu:set_text("CPU_1_2 ")
labelcpucol = wibox.widget.background()
labelcpucol:set_widget(labelcpu)
labelcpucol:set_fg("#16BBF5")

labelram = wibox.widget.textbox()
labelram:set_text("Ram ")
labelramcol = wibox.widget.background()
labelramcol:set_widget(labelram)
labelramcol:set_fg("#16BBF5")

labeltimeup = wibox.widget.textbox()
labeltimeup:set_text("TimeUp ")
labeltimeupcol = wibox.widget.background()
labeltimeupcol:set_widget(labeltimeup)
labeltimeupcol:set_fg("#16BBF5")

labelraiz = wibox.widget.textbox()
labelraiz:set_text("root / ")
labelraizcol = wibox.widget.background()
labelraizcol:set_widget(labelraiz)
labelraizcol:set_fg("#16BBF5")

labelhome = wibox.widget.textbox()
labelhome:set_text("/home ")
labelhomecol = wibox.widget.background()
labelhomecol:set_widget(labelhome)
labelhomecol:set_fg("#16BBF5")

labelwifi = wibox.widget.textbox()
labelwifi:set_text("Wifi ")
labelwificol = wibox.widget.background()
labelwificol:set_widget(labelwifi)
labelwificol:set_fg("#16BBF5")


-- Calendar
theme.cal = lain.widget.calendar({
    attach_to = { mytextclock },
    notification_preset = {
        font = "Noto Sans Mono Medium 10",
        fg   = theme.fg_normal,
        bg   = theme.bg_normal
    }
})


-- Widgets
-- Widget volume
volume = wibox.widget.textbox()
vicious.register( volume, vicious.widgets.volume, "$1%", 0.2, "Master")

-- Widget battery
battery = wibox.widget.textbox()
vicious.register( battery, vicious.widgets.bat, "$2%", 1, "BAT0")

-- Widget RAM
ram = wibox.widget.textbox()
vicious.register( ram, vicious.widgets.mem, "$2Mb / $1%", 3)

-- Widget timeup
uptime = wibox.widget.textbox()
vicious.register( uptime, vicious.widgets.uptime, "$2h $3m")

-- Widget fs / (file sistem disk space usage)
fsraiz = wibox.widget.textbox()
vicious.register( fsraiz, vicious.widgets.fs, "${/ used_gb} / ${/ size_gb} Gb")

-- Widget fs /home (file sistem disk space usage)
fshome = wibox.widget.textbox()
vicious.register( fshome, vicious.widgets.fs, "${/home used_gb} / ${/home size_gb} Gb")

-- Widget Wireless
wireless = wibox.widget.textbox()
vicious.register(wireless, vicious.widgets.wifi, "${ssid}",1,"wlp6s0")
colWireless = wibox.widget.background()
colWireless:set_widget(wireless)
colWireless:set_fg("#66BD24")

-- Widget CPU_graph
cpuwidget = awful.widget.graph()
-- Graph properties
cpuwidget:set_width(50)
cpuwidget:set_background_color("#494B4F")
cpuwidget:set_color({ type = "linear", from = { 0, 0 }, to = { 10,0 }, stops = { {0, "#FF5656"}, {0.5, "#88A175"},
                    {1, "#AECF96" }}})
-- Register widget
vicious.register(cpuwidget, vicious.widgets.cpu, "$1")


function theme.at_screen_connect(s)
    -- Quake application
   -- s.quake = lain.util.quake({ app = awful.util.terminal })
   s.quake = lain.util.quake({ app = "termite", height = 0.50, argname = "--name %s" })

    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.layouts[1])

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(my_table.join(
                           awful.button({ }, 1, function () awful.layout.inc( 1) end),
                           awful.button({ }, 3, function () awful.layout.inc(-1) end),
                           awful.button({ }, 4, function () awful.layout.inc( 1) end),
                           awful.button({ }, 5, function () awful.layout.inc(-1) end)))
    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = 22, opacity = 0.75, bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
          layout = wibox.layout.fixed.horizontal,
              mylauncher,
              space,
              space,
              s.mytaglist,
              space,
              s.mypromptbox,
              space,
        },
        --s.mytasklist, -- Middle widget
        s.mytasklist,
        { -- Right widgets
          layout = wibox.layout.fixed.horizontal,
              --  mykeyboardlayout,
              space,
              space,
              wibox.widget.systray(),
              space,
              mytextclock,
              space,
              cpuwidget,
              space,
              s.mylayoutbox,

        },
    }

    -- Create the bottom wibox
    s.mybottomwibox = awful.wibar({ position = "bottom", screen = s, border_width = 0, opacity = 0.75, height = 22, bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the bottom wibox
    s.mybottomwibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            space,
            labelarchlinuxcol,
            colbracketL,
            space,
            conky_widget,
            space,
            colbracketR,
        },
        nil, -- Middle widget
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            labelvolcol,
        		colbracketL,
        		space,
        		volume,
        		space,
        		colbracketR,
        		space,
        		space,
        		labelbatterycol,
        		colbracketL,
        		space,
        		battery,
        		space,
        		colbracketR,
        		space,
        		space,
        		labelramcol,
        		colbracketL,
        		space,
        		ram,
        		space,
        		colbracketR,
        		space,
        		space,
        		labeltimeupcol,
        		colbracketL,
        		space,
        		uptime,
        		space,
        		colbracketR,
        		space,
        		space,
        		labelhomecol,
        		colbracketL,
        		space,
        		fshome,
        		space,
        		colbracketR,
        		space,
        		space,
        		labelraizcol,
        		colbracketL,
        		space,
        		fsraiz,
        		space,
        		colbracketR,
        		space,
        		space,
        		labelwificol,
        		colbracketL,
        		space,
        		colWireless,
        		space,
        		colbracketR,
        		space,

        },
    }
end

return theme

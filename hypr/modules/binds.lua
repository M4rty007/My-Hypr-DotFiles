----------------------------------------------
--  _  __          _     _           _      --
-- | |/ /___ _   _| |__ (_)_ __   __| |___  --
-- | ' // _ \ | | | '_ \| | '_ \ / _` / __| --
-- | . \  __/ |_| | |_) | | | | | (_| \__ \ --
-- |_|\_\___|\__, |_.__/|_|_| |_|\__,_|___/ --
--           |___/                          --
----------------------------------------------

local mainMod = "SUPER"
local TERMINAL = "kitty"        -- *put on variables files 
local FILE_MANAGER = "nautilus" -- *put on variables files 
local MENU = "rofi -show drun"     -- *put on variables files
local BROWSER = "librewolf"     -- *put on variables files

-----------------------
--Window Manipulation--
-----------------------
hl.bind(mainMod .. " + Q",  hl.dsp.window.close())
hl.bind(mainMod .. " + D",  hl.dsp.window.fullscreen({mode = 1}))
hl.bind(mainMod .. " + F",  hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + G",  hl.dsp.window.float({action = "toggle"}))
hl.bind(mainMod .. " + J",  hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + M",  hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
------------------------
hl.bind(mainMod .. " + R",  hl.dsp.exec_cmd("/home/p6/.config/waybar/scripts/launch.sh")) -- just to test waybar *delete later
------------------------
----------------
--Window Focus--
----------------
hl.bind(mainMod .. " + Up",    hl.dsp.focus({direction = "up"}))
hl.bind(mainMod .. " + Down",  hl.dsp.focus({direction = "down"}))
hl.bind(mainMod .. " + Left",  hl.dsp.focus({direction = "left"}))
hl.bind(mainMod .. " + Right", hl.dsp.focus({direction = "right"}))

----------------------
--Move Window Around--
----------------------
hl.bind(mainMod .. " + SHIFT + Up",    hl.dsp.window.move({direction = "u"}))
hl.bind(mainMod .. " + SHIFT + Down",  hl.dsp.window.move({direction = "d"}))
hl.bind(mainMod .. " + SHIFT + Left",  hl.dsp.window.move({direction = "l"}))
hl.bind(mainMod .. " + SHIFT + Right", hl.dsp.window.move({direction = "r"}))

--------------------
--External Monitor--  *Require possible fix*
--------------------
--hl.bind(mainMod .. "CONTROL + SHIFT + 1", hl.dsp.focus({monitor = MONITOR1}))
--hl.bind(mainMod .. "CONTROL + SHIFT + 2", hl.dsp.focus({monitor = MONITOR2}))

--------------
--Workspaces--
--------------
-- Special workspace
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))

-- Move and resize window
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())

-- Switch move workspaces
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-----------
--Launche--
-----------
hl.bind(mainMod .. " + T",          hl.dsp.exec_cmd(TERMINAL))
hl.bind(mainMod .. " + E",          hl.dsp.exec_cmd(FILE_MANAGER))
hl.bind(mainMod .. " + Space",      hl.dsp.exec_cmd(MENU))
hl.bind(mainMod .. " + W",          hl.dsp.exec_cmd(BROWSER))
hl.bind("CONTROL + SHIFT + Escape", hl.dsp.exec_cmd(TERMINAL .. " -e btop"))
--hl.bind(mainMod .. " + L",          hl.dsp.exec_cmd()) -- For lockscreen
--hl.bind(mainMod .. " + V",          hl.dsp.exec_cmd()) -- For clipboard

--------------------
--Hardware Control--
--------------------
-- Audio
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })

-- Media *Require possible fix*
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- Brightness
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

--Screen Capture--
--hl.bind("Print",         hl.dsp.exec_cmd()) -- screenshot
--hl.bind("SHIFT + Print", hl.dsp.exec_cmd()) -- screenshot region
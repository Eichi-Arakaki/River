#!/bin/sh


# Terminal
riverctl map normal Super Return spawn $terminal

# Launcher
riverctl map normal Super M spawn 'wofi --show=drun'

# Screenshot
riverctl map normal Super S spawn 'grim -g "$(slurp)" - | wl-copy'

# Web Browser
riverctl map normal Super B spawn $web_browser


# Super+Q to close the focused view
riverctl map normal Super W close


# Super+J and Super+K to focus the next/previous view in the layout stack
riverctl map normal Super J focus-view next
riverctl map normal Super K focus-view previous

# Super+Shift+J and Super+Shift+K to swap the focused view with the next/previous
# view in the layout stack
riverctl map normal Super+Shift J swap next
riverctl map normal Super+Shift K swap previous


# Super+Alt+{H,J,K,L} to move views
riverctl map normal Super+Alt H move left 70
riverctl map normal Super+Alt J move down 70
riverctl map normal Super+Alt K move up 70
riverctl map normal Super+Alt L move right 70

# Super+Alt+Shif+{H,J,K,L} to resize views
# riverctl map normal Super+Alt+Shift H resize horizontal -100
# riverctl map normal Super+Alt+Shift J resize vertical 100
# riverctl map normal Super+Alt+Shift K resize vertical -100
# riverctl map normal Super+Alt+Shift L resize horizontal 100


# Super+Space to toggle float
riverctl map normal Super F toggle-float

# Super+F to toggle fullscreen
riverctl map normal Super Space toggle-fullscreen


# Super+{Up,Right,Down,Left} to change layout orientation
riverctl map normal Super Up    send-layout-cmd rivertile "main-location top"
riverctl map normal Super Right send-layout-cmd rivertile "main-location right"
riverctl map normal Super Down  send-layout-cmd rivertile "main-location bottom"
riverctl map normal Super Left  send-layout-cmd rivertile "main-location left"


# Strange actions
# Super+H and Super+L to decrease/increase the main ratio of rivertile(1)
riverctl map normal Super H send-layout-cmd rivertile "main-ratio -0.01"
riverctl map normal Super L send-layout-cmd rivertile "main-ratio +0.01"

# Super+Shift+H and Super+Shift+L to increment/decrement the main count of rivertile(1)
riverctl map normal Super+Shift H send-layout-cmd rivertile "main-count +1"
riverctl map normal Super+Shift L send-layout-cmd rivertile "main-count -1"


# Various media key mapping examples for both normal and locked mode which do
# not have a modifier
#for mode in normal locked
#do
    # Eject the optical drive (well if you still have one that is)
#    riverctl map $mode None XF86Eject spawn 'eject -T'

    # Control pulse audio volume with pamixer (https://github.com/cdemoulins/pamixer)
#    riverctl map $mode None XF86AudioRaiseVolume  spawn 'pamixer -i 5'
#    riverctl map $mode None XF86AudioLowerVolume  spawn 'pamixer -d 5'
#    riverctl map $mode None XF86AudioMute         spawn 'pamixer --toggle-mute'

    # Control MPRIS aware media players with playerctl (https://github.com/altdesktop/playerctl)
#    riverctl map $mode None XF86AudioMedia spawn 'playerctl play-pause'
#    riverctl map $mode None XF86AudioPlay  spawn 'playerctl play-pause'
#    riverctl map $mode None XF86AudioPrev  spawn 'playerctl previous'
#    riverctl map $mode None XF86AudioNext  spawn 'playerctl next'

#    # Control screen backlight brighness with light (https://github.com/haikarainen/light)
#    riverctl map $mode None XF86MonBrightnessUp   spawn 'light -A 5'
#    riverctl map $mode None XF86MonBrightnessDown spawn 'light -U 5'
#done
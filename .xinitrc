# Sources .Xresources for colours
(xrdb ~/.config/Xresources/.Xresources) &


# Wallpaper
(feh --bg-scale ~/personal/pictures/wallpapers/retrosunset.jpg) &


# Key Repeat Rate
(xset r rate 200 100) &
# (xset r rate 400 100) &


# NOTE: this makes my screen turn gray after 10 mins :/ idk fix
# Uncomment to always keep display turned on
# Settings can be checked with: xset -q
# (xset s off) &
# (xset -dpms) &
# (xset s noblank)&


# Hides mouse after 3 seconds
(unclutter --timeout 10) &


# Exec dwm
(exec dwm)

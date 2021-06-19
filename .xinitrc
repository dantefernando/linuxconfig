# Source .Xresources for colours
(xrdb ~/.config/Xresources/.Xresources) &

# Wallpaper
(feh --bg-scale ~/personal/pictures/wallpapers/retroSunset.jpg) &

# Key Repeat Rate
(xset r rate 200 100) &
# (xset r rate 400 100) &

# Always keep display turned on
# Settings can be checked with: xset -q
(xset s off) &
(xset -dpms) &
(xset s noblank)&

# Exec dwm
(exec dwm)

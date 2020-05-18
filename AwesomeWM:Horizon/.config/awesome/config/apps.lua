local apps = {
    terminal = "kitty", 
    launcher = "sh /home/sullyvahn/.config/rofi/launch.sh", 
    notifications = require("notifications"), 
    switcher = require("widgets.alt-tab"), 
    xrandr = "lxrandr", --require("widgets.multi-monitor.xrandr2")
    screenshot = "scrot", 
    volume = "pavucontrol", 
    appearance = "lxappearance"
}

return apps

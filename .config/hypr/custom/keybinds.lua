local home = os.getenv("HOME")


hl.bind("CTRL+ALT+K", hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.lua"), {description = "Edit user keybinds"} )

hl.bind("SUPER + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))

hl.bind("SUPER + escape", hl.dsp.global("quickshell:settingsToggle"), {description = "Toggle settings"})
hl.bind("SUPER + H", hl.dsp.exec_cmd("/home/corven/.config/hypr/custom/scripts/opacity.sh"))



## My private Hyprland Setup

This is the main Hyprland setup I currently use.
It does use Illogical-Impulse so it is NEEDED to use these Dotfiles correctly w/o any issues.
I've pre-made a script to launch the official Illogical-Impulse Script if you don't wanna go through your own effort of Installing it.

This should work for any Arch-Based Installation.

## Installation
> **READ ALL**

This should only be run on a clean installation of any system/installation. If you have already made your own setup, it is recommended to configure the dotfiles yourself/import them yourself (So you dont break your own ones)

> **First: Install git then clone the repository to run the installer:**
```bash
sudo pacman -S git
```
```bash
git clone https://github.com/Uncompletet/corven-dotfiles
cd corven-dotfiles
chmod +x install.sh
./install.sh
```
> **After the installation finishes log out and log back in.**

### Most used Keybinds

> **You can modify these Keybinds via .confg/hypr/hyprland/keybinds.lua

| Keybind                 | Action                    |
| -----------             | ------------------------- |
| `Super + T`             | Terminal                  |
| `Super + Q`             | Open File Manager         |
| `Super + 1, 2, 3..`     | Change workspaces         |
| `Super + ALT + 1, 2..`  | Move window to workspace  |
| `Super`                 | Main Menu                 |
| `Super + E`             | Close active Window       |
| `Super + B`             | AI sidebar (if active)    |
| `CTRL + Super + T`      | Wallpaper selector        |
| `Super + H`             | Switch opacity            |
| `Super + ALT + Space`   | Clipboard history         |
| `Super + F`             | Toggle fullscreen         |
| `Super + V`             | Toggle floating window    |
| `Super + J`             | Toggle eww                |
| `Super + Tab`           | Search + Workspaces       |

> **ALL keybinds are found inside of .config/hypr/hyprland/keybinds.lua**

Overwritten Configurations will be backed up by the Installation included
(Structure of the install.sh was taken by https://github.com/43PR)

### Contact

If you want to reach out to me for copy-right issues or other relevant issue. Please open an Issue or DM me via:
Discord: `corven._.`


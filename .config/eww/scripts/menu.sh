#!/bin/bash

names=(
  "Brave Browser"
  "Btop"
  "Discord"
  "Prism Launcher"
  "Neovim"
  "Spotify"
  "Steam"
  "Obs"
  "Dolphin"
  "Vesktop"
)

execs=(
  "brave --disable-features=WaylandWpColorManagerV1"
  "btop"
  "env DISCORD_ENABLE_WAYLAND=0 /usr/bin/discord"
  "prismlauncher"
  "nvim"
  "spotify-launcher %U"
  "steam"
  "obs"
  "dolphin"
  "vesktop --enable-features=VaapiIgnoreDriverChecks,VaapiVideoEncoder,VaapiVideoDecoder,CanvasOopRasterization,UseMultiPlaneFormatForHardwareVideo"
)

icons=(
  "/usr/share/icons/hicolor/128x128/apps/brave-desktop.png"
  "/usr/share/icons/hicolor/scalable/apps/btop.svg"
  "/usr/share/icons/hicolor/256x256/apps/discord.png"
  "/usr/share/icons/hicolor/scalable/apps/org.prismlauncher.PrismLauncher.svg"
  "/usr/share/icons/hicolor/128x128/apps/nvim.png"
  "/usr/share/icons/hicolor/512x512/apps/spotify-launcher.png"
  "/usr/share/icons/hicolor/256x256/apps/steam.png"
  "/usr/share/icons/hicolor/256x256/apps/com.obsproject.Studio.png"
  "/usr/share/icons/hicolor/scalable/apps/org.kde.dolphin.svg"
  "/usr/share/icons/hicolor/scalable/apps/vesktop.svg"
)

terminal=(
  false
  true
  false
  false
  true
  false
  false
  false
  false
)

json="["

for i in "${!names[@]}"; do
  [[ $i -ne 0 ]] && json+=","
  json+="{\"name\":\"${names[$i]}\",\"exec\":\"${execs[$i]}\",\"icon\":\"${icons[$i]}\",\"terminal\":\"${terminal[$i]}\"}"
done

json+="]"
echo "$json"

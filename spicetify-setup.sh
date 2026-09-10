#!/usr/bin/env bash

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="$HOME/.config"

curl -fsSL https://raw.githubusercontent.com/spicetify/cli/main/install.sh | sh && \
    sudo chmod a+wr /opt/spotify && \
    sudo chmod a+wr /opt/spotify/Apps -R && \
    cp -a "$REPO_DIR/spicetify" "$CONFIG_DIR"
exit 1

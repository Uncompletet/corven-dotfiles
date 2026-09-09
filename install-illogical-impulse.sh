#!/usr/bin/env bash

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$REPO_DIR/temp" && \
    cd "$REPO_DIR/temp" && \
    git clone https://github.com/end-4/dots-hyprland && \
        cd dots-hyprland && \
        ./setup install

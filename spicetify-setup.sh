#!/usr/bin/env bash

curl -fsSL https://raw.githubusercontent.com/spicetify/cli/main/install.sh | sh && \
    sudo chmod a+wr /opt/spotify 
    sudo chmod a+wr /opt/spotify/Apps -R
exit 1

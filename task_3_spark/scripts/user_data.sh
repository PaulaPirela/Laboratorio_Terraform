#!/bin/bash

export HOME=/home/ubuntu
wget -qO- https://astral.sh/uv/install.sh | sh

# shellcheck disable=SC1091
source "$HOME"/.local/bin/env
sudo apt update
sudo apt install -y python3 python3-pip
/usr/bin/python3 -m pip install spark
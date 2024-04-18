#!/bin/sh
set -e

# Install dependencies
apt-get update
apt-get install -y --no-install-recommends python3 python3-pip ninja-build gettext cmake unzip curl build-essential
apt-get clean && rm -rf /var/lib/apt/lists/*

# Install neovim
mkdir -p /tmp/neovim
cd /tmp/neovim
git init
git remote add origin https://github.com/neovim/neovim.git
git fetch origin "$SHA"
git reset --hard FETCH_HEAD
make CMAKE_BUILD_TYPE=Release
make install
rm -rf /tmp/neovim


#!/bin/sh
set -e

chezmoi init https://github.com/vohoanglong0107/dotfiles.git --apply --promptBool "Is this a server?"=true
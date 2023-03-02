#!/bin/bash

set -euxo pipefail

# chezmoi -> (clone dotfiles) -> install brew -> install packages -> copy dotfiles

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

[ -d /home/linuxbrew ] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
[ -d /opt/homebrew ] && eval "$(/opt/homebrew/bin/brew shellenv)"

# Exit as success
exit 0

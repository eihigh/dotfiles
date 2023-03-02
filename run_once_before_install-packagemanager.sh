#!/bin/bash

set -euxo pipefail

# chezmoi -> (clone dotfiles) -> install brew -> install packages -> copy dotfiles

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

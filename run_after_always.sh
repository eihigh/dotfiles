#!/bin/bash

set -euxo pipefail

[ -d /home/linuxbrew ] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
[ -d /opt/homebrew ] && eval "$(/opt/homebrew/bin/brew shellenv)"

# Check and change the login shell
if [[ "$SHELL" != *"/zsh" ]]; then
	grep '/zsh' < /etc/shells || which zsh | sudo tee -a /etc/shells
	sudo chsh -s $(which zsh) $USER
fi

# Include my gitconfig
git config --global include.path ~/.gitconfig_shared

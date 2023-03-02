#!/bin/bash

set -euxo pipefail

# Check and change the login shell
if [[ "$SHELL" != *"/zsh" ]]; then
	grep '/zsh' < /etc/shells || which zsh | sudo tee -a /etc/shells
	sudo chsh -s $(which zsh) $USER
fi

# Include my gitconfig
git config --global include.path ~/.gitconfig_shared

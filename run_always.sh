#!/bin/bash

set -euxo pipefail

if [[ "$SHELL" != *"/zsh" ]]; then
	echo 'changing the shell'
	grep '/zsh' < /etc/shells || which zsh | sudo tee -a /etc/shells
	sudo chsh -s $(which zsh) $USER
fi

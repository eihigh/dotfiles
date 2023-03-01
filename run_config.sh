#!/bin/bash

set -euxo pipefail

if [[ "$SHELL" != *"/zsh" ]]; then
	which zsh | sudo tee -a /etc/shells
	sudo chsh -s $(which zsh) $USER
fi

#!/bin/bash

set -euxo pipefail

[ -d /home/linuxbrew ] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
[ -d /opt/homebrew ] && eval "$(/opt/homebrew/bin/brew shellenv)"

brew install chezmoi go jq vim zsh fzf node gopls gh ghq lazygit ripgrep || true

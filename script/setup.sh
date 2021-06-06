#!/bin/bash

mkdir -p ~/.cache/vim
mkdir -p ~/.vim
mkdir -p ~/.vim/plugged
mkdir -p ~/.vim/autoload

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -sf ~/dotfiles/settings/anyshrc ~/.anyshrc
ln -sf ~/dotfiles/settings/bashrc ~/.bashrc
ln -sf ~/dotfiles/settings/sshrc ~/.sshrc
ln -sf ~/dotfiles/settings/sshrc.d ~/.sshrc.d
ln -sf ~/dotfiles/settings/vimrc ~/.vimrc
ln -sf ~/dotfiles/settings/zshrc ~/.zshrc
ln -sf ~/dotfiles/settings/gitconfig_shared ~/.gitconfig_shared
ln -sf ~/dotfiles/settings/gitignore_global ~/.gitignore_global

yes | vim +PlugInstall +qall

git config --global include.path ~/.gitconfig_shared

go install golang.org/x/tools/gopls@latest
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/mattn/gof@latest
go install github.com/x-motemen/ghq@latest
# go install github.com/jesseduffield/lazygit@latest
go get github.com/jesseduffield/lazygit
go install github.com/monochromegane/the_platinum_searcher/cmd/pt@latest

sudo npm install -g typescript

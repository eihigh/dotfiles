# Install Ubuntu from Microsoft Store
# Register UNIX User me:me
# wsl --export Ubuntu-20.04 C:\Users\eihigh\wsl\Ubuntu-20.04.tar
# wsl --unregister Ubuntu-20.04
# wsl --import Lize C:\Users\eihigh\wsl\Lize C:\Users\eihigh\wsl\Ubuntu-20.04.tar
# wsl -d Lize -u me
# Reopen Windows Terminal and delete default profile
# Duplicate profile and change the command line to `wsl.exe -d Lize -u me`
# See https://brew.sh/ to install brew

# Install system gcc
sudo apt install gcc -y

# Install ja_JP.utf8
sudo apt install language-pack-ja -y

# Install brew and temporarily set env vars
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install go jq vim zsh node

# Change the login shell
which zsh | sudo tee -a /etc/shells
sudo chsh -s $(which zsh) me

# Mind your own business!
mv ~/.bashrc{,_default}
mv ~/.profile{,_default}

# Copy keys
cp /mnt/c/Users/eihigh/.ssh/* ~/.ssh/
chmod 0400 ~/.ssh/*

~/dotfiles/script/setup.sh

# dotfiles

## Setup
### In Own PC
1. Install required commands: curl, make, ...
1. `git clone https://github.com/eihigh/dotfiles.git` to clone this repo
1. `sudo dotfiles/.utils/install-rcm` to install rcm
1. `RCRC=~/dotfiles/rcrc rcup` to run rcup

### In Server
1. `cd /tmp` and `git clone https://github.com/eihigh/dotfiles.git` to clone this repo temporary
1. `cp -r dotfiles/vim/* ~/.vim/` to copy .vim manually
1. `dotfiles/hooks/post-up` to make environment manually

## Optional
### install fzf
* `.fzf/install`

### install go tools
* `dotfiles/.utils/install-go-tools`

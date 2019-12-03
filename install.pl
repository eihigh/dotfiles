#!/usr/bin/env perl
use strict;
use warnings;
use File::Basename;
use File::Spec::Functions qw/catfile/;

my $home = $ENV{HOME};
my $dotfiles = $ENV{DOTFILES} or die 'no such env var: DOTFILES';

# install dotfiles under $HOME
`${dotfiles}/home/install.pl`;

# install dot directories
my @dirs = qw/vim hooks/;
for my $dir (@dirs) {
	my $new = catfile($home, '.'.$dir);
	my $old = catfile($dotfiles, $dir);
	symlink $old, $new;
}

# install vim-plug
unless (-e "${home}/.vim/autoload/plug.vim") {
	`curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`;
}

# install vim plugins
`vim +PlugInstall +q +q`;

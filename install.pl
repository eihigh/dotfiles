#!/usr/bin/env perl
use strict;
use File::Basename;
use File::Spec::Functions qw/catfile/;

my $home = $ENV{HOME};
my $dotfiles = $ENV{DOTFILES} or die 'no such env var: DOTFILES';

my @dirs = qw/vim hooks/;
for my $dir (@dirs) {
	my $new = catfile($home, '.'.$dir);
	my $old = catfile($dotfiles, $dir);
	symlink $old, $new;
}

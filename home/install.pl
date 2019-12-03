#!/usr/bin/env perl
use strict;
use File::Basename;
use File::Spec::Functions qw/catfile/;

my $home = $ENV{HOME};
my $dotfiles = $ENV{DOTFILES} or die 'no such env var: DOTFILES';

for my $dst (glob "${dotfiles}/home/*") {
	my $name = basename($dst);
	next if $name eq 'install.pl'; # do not symlink myself

	my $src = catfile($home, '.'.$name);
	symlink $dst, $src;
}

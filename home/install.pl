#!/usr/bin/env perl
use strict;
use warnings;
use File::Basename;
use File::Spec::Functions qw/catfile/;

my $home = $ENV{HOME};
my $dotfiles = $ENV{DOTFILES} or die 'no such env var: DOTFILES';
my $dotbak = catfile($home, '.dotbak');
`mkdir -p ${dotbak}`;

for my $old (glob "${dotfiles}/home/*") {
	my $name = basename($old);
	next if $name eq 'install.pl'; # do not symlink myself
	$name = '.'.$name;

	# make backup
	my $new = catfile($home, $name);
	if (-e $new) {
		`mv ${new} ${dotbak}/${name}`;
	}

	# symlink
	symlink $old, $new;
}

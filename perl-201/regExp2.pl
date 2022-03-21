#!/usr/bin/perl

=begin comment

Desc: Basic script to work with common regex. 
Author: Avik Deb
Email: avikdeb@duckdoer.net.in

=end comment
=cut

use strict;
use warnings;
$| = 1;

sub main() {
	
	my $input = 'C:\Avik\perlworkspace\perl\downloadedText.txt';
	open(INPUT, $input) or die("Input file $input not found.\n");
	
	# below block prints the match in groups
	while (my $line = <INPUT>) {
		if ($line =~ / (l..e) /) { # Note the group created with () within match / ... /
			print "$1\n";	# $1 refers to 1st group. If we had second, third etc. we will refer them as $2, $3 etc.	
		}
	}
	
	close(INPUT);
}

main();

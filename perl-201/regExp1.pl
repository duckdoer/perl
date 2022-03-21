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
	
	# below block prints lines containing the match
	while (my $line = <INPUT>) {
		if ($line =~ / l..e /i) { # It will take life like, live, love etc. and capture the whole line
			print $line;			
		}
	}
	print "-" x 40; # x operator is used to repeat a string
	
	close(INPUT);
}

main();

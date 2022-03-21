#!/usr/bin/perl

=begin comment

Desc: Basic script to work with common regex. Greedy quantifier (*) and non-greedy quantifier (*?).
Author: Avik Deb
Email: avikdeb@duckdoer.net.in

=end comment
=cut

use strict;
use warnings;
$| = 1;

sub main() {
	
	my $input = 'C:\Avik\perlworkspace\perl\mymanjeeves.txt';
	open(INPUT, $input) or die("Input file $input not found.\n");
	
	# below block prints the match in groups
	while (my $line = <INPUT>) {
		# if ($line =~ /(s.*n)/) {  # Greedy *
		if ($line =~ /(s.*?n)/) {   # Non-greedy *?
			print "$1\n";		
		}
	}
	
	close(INPUT);
}

main();

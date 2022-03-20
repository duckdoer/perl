#!/usr/bin/perl

=begin comment

Desc: Basic script to read a text file line by line.
Author: Avik Deb
Email: avikdeb@duckdoer.net.in

=end comment
=cut

use strict;
use warnings;
$|=1; # This tells no output buffering. Output is seen immediately.

sub main() {
	my $file = 'C:\Avik\perlworkspace\perl\downloadedText1.txt';
	open(INPUT, $file) or die("Input file $file not found.\n");
	
	# die("Input file $file not found."); # Note the die() sub-routine
	# die("Input file $file not found.\n"); # Note the use of \n to suppress details error.
	
	while(my $line = <INPUT>) {
		print $line;
	}
	
	close(INPUT);
	
}

main();

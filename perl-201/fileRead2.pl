#!/usr/bin/perl

=begin comment

Desc: Basic script to read a text file line by line and 
      search a word, say 'children', in it.
Author: Avik Deb
Email: avikdeb@duckdoer.net.in

=end comment
=cut

use strict;
use warnings;
$| = 1;    # This tells no output buffering. Output is seen immediately.

sub main() {
	my $file = 'C:\Avik\perlworkspace\perl\downloadedText.txt';
	open( INPUT, $file ) or die("Input file $file not found.\n");

	while ( my $line = <INPUT> ) {
		if ($line =~ /children/) {  # If line matches chindren
			print $line;			# Printing lines that contain our match 'children'. 
									# Even better logic is with / children / for a discrete word match.
		}
		
	}

	close(INPUT);

}

main();

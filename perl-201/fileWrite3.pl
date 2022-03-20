#!/usr/bin/perl

=begin comment

Desc: Basic script to read from a file and change a word and finally write in another file. 
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
	
	my $output = 'C:\Avik\perlworkspace\perl\output3.txt';
	open(OUTPUT, '>'.$output) or die("Cannot create output file $output.\n");
	
	while ( my $line = <INPUT> ) {
		if ($line =~ /\bchildren\b/) {
			$line =~ s/children/CHILDREN/ig;  # i means case insensitive and g means global
			print OUTPUT $line;			
		}
	}
	print "Successfully written texts with replacements in $output.\n";
	close(INPUT);
	close(OUTPUT);
}

main();

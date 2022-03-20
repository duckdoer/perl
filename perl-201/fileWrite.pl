#!/usr/bin/perl

=begin comment

Desc: Basic script to write a text and replace text. 
Author: Avik Deb
Email: avikdeb@duckdoer.net.in

=end comment
=cut

use strict;
use warnings;
$| = 1;    # This tells no output buffering. Output is seen immediately.

sub main() {
	
	# my $output = '>C:\Avik\perlworkspace\perl\output.txt'; # NOTE the > sign in front of filename / filepath. This tells Perl to create a new file. It's ugly!
	# open(OUTPUT, $output) or die("Cannot create file $output.\n"); # NOTE the use of FileHandler OUTPUT
	
	my $output = 'C:\Avik\perlworkspace\perl\output.txt'; # Note the > is removed from filename and put in FileHandler in next line
	open(OUTPUT, '>'.$output) or die("Cannot create file $output.\n"); # NOTE the use of FileHandler OUTPUT and > put before filename here.
																	   # NOTE: String concatenation is done with . while number addition is done with + in Perl

	print OUTPUT "Hello!"; # Use the File Handler to write to the file
	
	close(OUTPUT);

}

main();

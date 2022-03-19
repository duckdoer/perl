#!/usr/bin/perl

=begin comment

Desc: Basic script to check if a particular file exists.
Author: Avik Deb
Email: avikdeb@duckdoer.net.in

=end comment
=cut

use strict;
use warnings;

sub main() {
	my $file = 'C:\Avik\perlworkspace\perl\README.md'; # using a scalar variable
	if ( -f $file ) { # Note the use of single quote and -f option is used just like Bash program
		print "Found $file.\n"; # Note the use of double quote
	}
	else {
		print "$file not found.\n"; 
	}
}

main();

#!/usr/bin/perl

=begin comment

Desc: Basic script to check if more than one specified files exist. We will use array here.
Author: Avik Deb
Email: avikdeb@duckdoer.net.in

=end comment
=cut

use strict;
use warnings;
$|=1; # This tells no output buffering. Output is seen immediately.

sub main() {
	my @files = ('C:\Avik\perlworkspace\perl\README.md', 
					'C:\Avik\perlworkspace\perl\perl-201\fileExists.pl', 
					'C:\Avik\perlworkspace\perl\perl-201\hello.pl',
					'C:\Avik\perlworkspace\perl\perl-201\amused.txt',
				);
	
	# iterate through the array
	foreach my $file(@files) {
		# print "$file\n";
		if ( -f $file ) {
			print "Found $file.\n";
		}
		else {
			print "$file not found.\n"; 
		}
	}
	
}

main();

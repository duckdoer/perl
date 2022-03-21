#!/usr/bin/perl

=begin comment

Desc: Basic script to work with common regex - Numeric quantifiers.
Author: Avik Deb
Email: avikdeb@duckdoer.net.in

=end comment
=cut

use strict;
use warnings;
$| = 1;

sub main() {
	
	my $hostname = 'ukx11801';
	
	if($hostname =~ /(ukx\d*)/) {
		print "matched: '$1'\n";
	}
	
	# Better use a numeric quantifier
	if($hostname =~ /(ukx\d{5})/) {
		print "matched with numeric quantifier: '$1'\n";
	}
	
	# A range is also allowed. e.g. at least 3 and at most 6
	if($hostname =~ /(ukx\d{3,6})/) {
		print "matched with numeric quantifier range: '$1'\n";
	}
	
	# Match at least 3 digits
	if($hostname =~ /(ukx\d{3,})/) {
		print "matched with at least 3: '$1'\n";
	}
		 
}

main();

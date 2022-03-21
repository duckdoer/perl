#!/usr/bin/perl

=begin comment

Desc: Basic script to work with common regex. Escape characters in match.
Author: Avik Deb
Email: avikdeb@duckdoer.net.in

=end comment
=cut

use strict;
use warnings;
$| = 1;

sub main() {
	
	# \d digit
	# \s space
	# \S non-space
	# \w alphanumeric inclusing underscor
	
	my $text = 'I am 117 years old tomorrow.'; 		# Case 1. Using single quote to mean a simple string literal
	# my $text = 'I am 		117 years old tomorrow.'; 	# Case 2. There are many spaces / tab
	
	# Case 1.
	if($text =~ /(\d*)/) {
		print "matched (with *): '$1'\n"; # Note that it will not give anything, as * will return with 0 or more match
	}
	
	# Case 2.
	if($text =~ /(\d+)/) {
		print "matched (with +): '$1'\n"; # To force 1 or more matched we have to use + quantifier
	}
	
	# Case 2A.
	# To match 'am 117' (space hardcoded) - not a good one
	if($text =~ /(am \d*)/) {
		print "matched (am 117 hardcoded space): '$1'\n"; # But it will fail if we have a tab or more space between am and 117
	}
	
	# Case 2B.
	# To match 'am 117' (handles any number of space or tab such as 'am		117')
	if($text =~ /(am\s*\d*)/) { 							# Note * or + quantifier is required for more than one space
		print "matched (am 117 with any space): '$1'\n"; 	# But it will fail if we have a tab or more space between am and 117
	}
	
	#Case 3.
	# To match non-space characters after y
	if($text =~ /(y\S*)/) { 							
		print "matched (words with y and *): '$1'\n";
	}
	 
}

main();

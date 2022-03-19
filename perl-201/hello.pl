#!/usr/bin/perl

=begin comment
(It's a multi-line comment)

Desc: Basic script to demonstrate a standard perl script structure.
      It just prints a line. Demonstrates two pragmas - strict and warnings.
      It also demonstrates single line and multi-line comments.
Author: Avik Deb
Email: avikdeb@duckdoer.net.in

=end comment
=cut

# Two pragmas (it's a single line comment)
use strict;
use warnings;

# Defining main() subroutine
sub main(){
	print "Hello DuckDoers!";
}

# calling the main() subroutine
main();
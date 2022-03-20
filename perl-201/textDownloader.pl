#!/usr/bin/perl

=begin comment

Desc: Basic script to download copyright free text files from Gutenberg project.
Author: Avik Deb
Email: avikdeb@duckdoer.net.in

=end comment
=cut

use strict;
use warnings;
use LWP::Simple;

sub main() {
	print "Downloading file ...\n";

	my $code = getstore( "https://www.gutenberg.org/cache/epub/8164/pg8164.txt", "downloadedText.txt" );
	if ( $code == 200 ) {
		print "Download successful.\n";
	}
	else {
		print "Download failed.\n";
	}

	print "Finished downloading file.\n";
}

main();

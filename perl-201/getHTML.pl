use strict;
use warnings;
use LWP::Simple;

sub main() {
	print "Downloading ...\n";
	# print get("https://caveofprogramming.com/");
	# getstore("https://caveofprogramming.com/", "homepage.html");
	
	my $code = getstore("https://caveofprogramming.com/", "homepage.html");
	if ($code == 200) {
		print "Success!\n";
	} else {
		print "Failed.\n";
	}
	
	print "Finished.\n";
}

main();

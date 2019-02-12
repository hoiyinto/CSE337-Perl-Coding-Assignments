use strict;
use warnings;

unless(mkdir "features") {
    die "Unable to create a directory\n";
}

open IN, "<$ARGV[0]" or die "Can't open input file: $!";
open OUT0,">features/0-features.txt" or die "Can't open output file: $!";
open OUT1,">features/1-features.txt" or die "Can't open output file: $!";
open OUT2,">features/2-features.txt" or die "Can't open output file: $!";
open OUT3,">features/3-features.txt" or die "Can't open output file: $!";
open OUT4,">features/4-features.txt" or die "Can't open output file: $!";
open OUT5,">features/5-features.txt" or die "Can't open output file: $!";
open OUT6,">features/6-features.txt" or die "Can't open output file: $!";
open OUT7,">features/7-features.txt" or die "Can't open output file: $!";
open OUT8,">features/8-features.txt" or die "Can't open output file: $!";
open OUT9,">features/9-features.txt" or die "Can't open output file: $!";

while(<IN>)
{
	my @word = split(",", $_);
	if($word[1]==0){
		print OUT0 "$word[0]\n";
	}
	elsif($word[1]==1){
		print OUT1 "$word[0]\n";
	}
	elsif($word[1]==2){
		print OUT2 "$word[0]\n";
	}
	elsif($word[1]==3){
		print OUT3 "$word[0]\n";
	}
	elsif($word[1]==4){
		print OUT4 "$word[0]\n";
	}
	elsif($word[1]==5){
		print OUT5 "$word[0]\n";
	}
	elsif($word[1]==6){
		print OUT6 "$word[0]\n";
	}
	elsif($word[1]==7){
		print OUT7 "$word[0]\n";
	}
	elsif($word[1]==8){
		print OUT8 "$word[0]\n";
	}
	else{
		print OUT9 "$word[0]\n";
	}
}

print "Files have been created!\n";

use Cwd;
my $dir = getcwd;
use Cwd 'abs_path';
print abs_path("features/0-features.txt");
print "\n";
print abs_path("features/1-features.txt");
print "\n";
print abs_path("features/2-features.txt");
print "\n";
print abs_path("features/3-features.txt");
print "\n";
print abs_path("features/4-features.txt");
print "\n";
print abs_path("features/5-features.txt");
print "\n";
print abs_path("features/6-features.txt");
print "\n";
print abs_path("features/7-features.txt");
print "\n";
print abs_path("features/8-features.txt");
print "\n";
print abs_path("features/9-features.txt");
print "\n";

close IN;
close OUT0;
close OUT1;
close OUT2;
close OUT3;
close OUT4;
close OUT5;
close OUT6;
close OUT7;
close OUT8;
close OUT9;


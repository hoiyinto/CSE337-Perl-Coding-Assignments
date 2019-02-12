use strict;
use warnings;

open IN, "<$ARGV[0]" or die "Can't open input file: $!";

my @arr = (0)x10;

while(<IN>)
{
	my @word = split(",", $_);
	my $feature=$word[1];
	my @wordsCount = split(" ", $word[0]);
	$arr[$feature]+=scalar(@wordsCount);
}

foreach (@arr)
{
	print "$_\n";
}

close IN;
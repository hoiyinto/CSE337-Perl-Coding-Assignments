use strict;
use warnings;

open IN, "<q2.in" or die "Can't open input file: $!";
open OUT,">q2p1.out" or die "Can't open output file: $!";

my $str1=<>;
my $str2=<>;
chomp $str1;
chomp $str2;

sub replace
{
	my @arg = @_;
	my $string;

	while(<IN>)
	{
		$string.=$_;
	}

	while($string =~ s|\b$arg[0]\b|$arg[1]|)
	{
	}     

	print OUT $string;
}

replace($str1,$str2);

close IN;
close OUT;


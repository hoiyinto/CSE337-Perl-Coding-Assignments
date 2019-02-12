use strict;
use warnings;

open IN, "<q2.in" or die "Can't open input file: $!";
open OUT,">q2p2.out" or die "Can't open output file: $!";

my $num=<>;
chomp $num;

sub remove
{
	my ($n) = @_;
	my $string;
	my $found=0;

	while(<IN>)
	{
		my @wordsCount = split(" ", $_);
		if(scalar(@wordsCount)!=$n)
		{
			$string.=$_;
		}
		else
		{
			$found++;
		}
	}  
	if($found==0)
	{
		print OUT "Oooh Nooo!";
	}
	else
	{
		print OUT $string;
	}
}

remove($num);

close IN;
close OUT;


use strict;
use warnings;

open ART, "<collections.csv" or die "Can't open input file: $!";
<ART>;       

my $firstAW=<ART>;
my @firstAWinfo = split(",", $firstAW); 

my $oldestID=$firstAWinfo[0];
my $newestID=$firstAWinfo[0];
my $oldestYear=$firstAWinfo[3];
my $newestYear=$firstAWinfo[3];

while (my $line =<ART>){
	my @artwork = split(",", $line); 
	
	if($artwork[3]<$oldestYear)
	{
		$oldestYear=$artwork[3];
		$oldestID=$artwork[0];
	}
	elsif ($artwork[3]>$newestYear) 
	{
		$newestYear=$artwork[3];
		$newestID=$artwork[0];
	}
}

print "$oldestID\n";
print "$newestID\n";

close ART;
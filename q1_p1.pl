use strict;
use warnings;

open ART, "<collections.csv" or die "Can't open input file: $!";
<ART>;       

my %artworkInfo;

while (my $line =<ART>){
	my @artwork = split(",", $line); 
	if( exists($artworkInfo{$artwork[2]} ) )
	{
		$artworkInfo{$artwork[2]}+=1;
	}
	else
	{
		$artworkInfo{$artwork[2]}=1;
	}
	
}

my $input=<STDIN>;
chomp $input;
print ("$artworkInfo{$input}\n");

close ART;
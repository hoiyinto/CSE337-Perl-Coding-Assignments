use strict;
use warnings;

open ART1, "<collections.csv" or die "Can't open input file: $!";
<ART1>;   
open ART2, "<m1.csv" or die "Can't open input file: $!";
<ART2>;  
open ART3, "<m2.csv" or die "Can't open input file: $!";
my $firstline=<ART3>;  
open OUT,">exhibition.csv" or die "Can't open output file: $!";
chomp $firstline;
print OUT "$firstline\n";

my @artwork;

while (my $line =<ART1>){
	push(@artwork, $line);
}
while (my $line =<ART2>){
	push(@artwork, $line);
}
while (my $line =<ART3>){
	push(@artwork, $line);
}

@artwork=sort(@artwork);

foreach (@artwork)
{
	chomp $_;
	print OUT "$_\n";
}

close ART1;
close ART2;
close ART3;
close OUT;
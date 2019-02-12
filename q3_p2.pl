use strict;
use warnings;

my %rev = (JAN=>4840,FEB=>4340,MAR=>3900,APR=>4330,MAY=>3090,JUN=>3660,JUL=>3520,AUG=>3280,SEP=>4130,OCT=>3690,NOV=>4260,DEC=>4800);

my %num = (JAN=>1,FEB=>2,MAR=>3,APR=>4,MAY=>5,JUN=>6,JUL=>7,AUG=>8,SEP=>9,OCT=>10,NOV=>11,DEC=>12);

my %month = (1=>"JAN",2=>"FEB",3=>"MAR",4=>"APR",5=>"MAY",6=>"JUN",7=>"JUL",8=>"AUG",9=>"SEP",10=>"OCT",11=>"NOV",12=>"DEC");

print "Months can be selected using the three initials letters.\n";

print "Enter the initial month: ";
my $initial=<STDIN>;
chomp $initial;
$initial=uc $initial;

while(!(exists $rev{$initial}))
{
	print "Please enter only the three initials letters of a valid month.\n";
	print "Re-enter the initial month: ";
	$initial=<STDIN>;
	chomp $initial;
	$initial=uc $initial;
}

print "Enter the final month: ";
my $final=<STDIN>;
chomp $final;
$final=uc $final;

while(!(exists $rev{$initial})||$num{$initial}>$num{$final})
{
	print "Please enter only the three initials letters of a valid month.\n";
	print "Re-enter the final month: ";
	$final=<STDIN>;
	chomp $final;
	$final=uc $final;
}

my $total=0;
if($initial eq $final)
{
	$total=$rev{$initial};
}
else
{
	my $ptr=$num{$initial};
	while($ptr<=$num{$final})
	{
		my $m=$month{$ptr};
		$total+=$rev{$m};
		$ptr++;
	}
}

print "The cumulative revenue is: $total\n";

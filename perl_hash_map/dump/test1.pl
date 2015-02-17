use strict;
use warnings;
#use 5.010;

my %planets= (
	Mercury =>0.4,  
	Venus => 0.7,
	Earth => 1,
	Mars => 1.5,
	Ceres => 2.77,
	Jupiter => 5.2,
	Saturn => 9.5,
	Uranus => 19.6,
	Neptune => 30,
	Pluto => 39,
	Charon => 39,
	Charon => 40,
	Charon => 41,
	);
	
	foreach my $name(sort keys %planets){
		printf "$name, $planets{$name}\n";
	}

use strict;
use warnings;

my %data;

while (<DATA>) {
  my ($k, $v) = /\w+/g;
  push @{ $data{$k} }, $v;
}

for my $k (sort keys %data) {
  printf "%s => %s\n", $k, join ',', @{ $data{$k} };
}

__DATA__
abc=>1
hello=>32
abc=>4
hello=>23
hello=>12
xyz=>18

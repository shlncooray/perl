my @pairs = (
    abc=>1,
    hello=>32,
    abc=>4,
    hello=>23,
    hello=>12,
    xyz=>18,
);

my %hash;

# collect
for(my $idx = 0; $idx < scalar @pairs; $idx += 2){
    my $key = $pairs[$idx];
    my $val = $pairs[$idx+1];
    push @{ $hash{$key} }, $val;
}

# print combined
while( my ($key, $val) = each %hash ){
    print "$key = ", join(',', @$val), "\n";
}

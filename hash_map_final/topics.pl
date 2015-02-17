#Shelan Cooray
#2014-02-17
#Read XML file using XML::DOM and Store into a HashMap then Print values

use XML::DOM;

my $parser=new XML::DOM::Parser;
my $xmlDoc=$parser->parsefile("topics.xml");
my %hashkeys;

foreach $hashkey($xmlDoc->getElementsByTagName('hashkey')){
	$key=$hashkey->getAttribute('key');
	$data=$hashkey->getElementsByTagName('data');
	
	$title=$hashkey->getElementsByTagName('title');
	$title_value=$title->item(0)->getFirstChild->getNodeValue;
	
	$description=$hashkey->getElementsByTagName('description');
	$desc_value=$description->item(0)->getFirstChild->getNodeValue;
	
	$val=$title_value." --> ".$desc_value;
	push @{$hashkeys{$key}}, "\t* ".$val."\n"; 

}

foreach my $key(sort keys %hashkeys){
	print "$key\n";
	print "@{$hashkeys{$key}}";
	print "\n";
}

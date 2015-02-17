#Shelan Cooray
#2014-02-17
#Read XML file using XML::DOM and Store into a HashMap then Print values

use XML::DOM;

my $parser=new XML::DOM::Parser;
my $xmlDoc=$parser->parsefile("topics.xml");

foreach $hashkey($xmlDoc->getElementsByTagName('hashkey')){
	$key=$hashkey->getAttribute('key');
	
	print "$key\n-----------\n";
	
	foreach $data($hashkey->getElementsByTagName('data')){
		$title=$data->getElementsByTagName('title');
		$title_value=$title->item(0)->getFirstChild->getNodeValue;
		
		$description=$data->getElementsByTagName('description');
		$desc_value=$description->item(0)->getFirstChild->getNodeValue;
		
		print "\t* $title_value - > $desc_value\n";
	}
	print "\n"
}

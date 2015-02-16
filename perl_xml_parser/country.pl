#Shelan Cooray
#Date : 2015/02/13
#XML Parser example using XML::DOM

use XML::DOM;

sub getXML{
	my $parser=new XML::DOM::Parser;
	my $xmlDoc=$parser->parsefile("country.xml");
	
	return $xmlDoc;
}

sub getXMLValues{

	#my ($doc)=@_;
	$doc=getXML();
	foreach $language($doc->getElementsByTagName('language')){
		
		$name=$language->getAttribute('name');
		$iso_code=$language->getAttribute('iso-code');
		foreach $country($language->getElementsByTagName('country')){
			
			$c_name=$country->getAttribute('name');
			$c_iso_code=$country->getAttribute('iso-code');
			$status=$country->getElementsByTagName('status');
			$s_value=$status->item(0)->getFirstChild->getNodeValue;
			
			if($s_value eq "final"){
				$childdcr=$country->getElementsByTagName('childdcr');
				$path=$childdcr->item(0)->getAttribute('path');
				print "/$iso_code/$c_iso_code$path\n";
			}
		}
	}
}

#$doc=getXML();
#getXMLValues($doc);
getXMLValues();




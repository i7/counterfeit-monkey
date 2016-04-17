open IN, "Scrabble - Official Scrabble Words.txt" or die "Die";
#open IN, "Sample.txt" or die "Die";

while ($nl = <IN>) {
	$nl =~ m/^\s*(.*?)\s*$/;
	$nl = $1;
	if ($nl ne "") {
		$valid{$nl} = 1;
	}
}
close IN;

open IN2, "mystuff.txt" or die "Die";

while ($nl = <IN2>) {
	$nl =~ m/^\s*(.*?)\s*$/;
	$nl = $1;
	if (exists ($valid{$nl})) {
		print $nl, "\n";
	}
}
close IN2;

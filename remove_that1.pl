#! /usr/bin/perl

while(<STDIN>)
{
  my($line) = $_;

	# i (Cogn.) Schltr.
  # $line =~ s/\([^\)+]+\) *[A-Z].*$//g; 
	# Aaptolasma callistoderma (Pilsbry, 1911)
  # $line =~ s/\([^\)+]+\d\)$//g; 
	# Abaxisotima acuminata (Wang, Yuwen & Xiangwei
  # $line =~ s/\([A-Z].+$//g; 
		# Agrodiaetus amasyensis de
	  # $line =~ s/(\w+ \w+) de *$/$1/g; 
	  # $line =~ s/(\w+ \w+) du *$/$1/g; 

	# $line =~ s/([a-z-]+) [A-Z].*$/$1/g;
  # $line =~ s/ /\n/g; 
	print $line;
}



#! /usr/bin/perl

while(<STDIN>)
  {
	  my($line) = $_;
		$flag = 0;
		if ($line =~ m/^([A-Z][a-z]+)/)
		{			
			$genera_name = $1;
			# print "$genera_name\n";
			print $line;
			$flag = 1;
		}			
		if ($line =~ m/^([a-z- ]+)\s$/)
		{
			my($species_name) = $1;
			# print "$genera_name $species_name\n";
			print $line;
			$flag = 1;
		}
		if ($line =~ m/^([a-z]+), ([A-Z][a-z]+)\s$/)
		{
			# intorta, Olivella
			# print "$2 $1\n";
			print $line;
			$flag = 1;
		}
		if ($flag == 0)
		{			
			print "URA: $line";
		}  
	}

# 


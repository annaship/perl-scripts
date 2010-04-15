#! /usr/bin/perl

while(<STDIN>)
  {
	  my($line) = $_;
		$flag = 0;
		# todo: Ceratostoma foliatum !
		# todo: Cerithidea 
		# 				hegewischi californica
		# todo: Cypraea 
		# 				moneta, 7
		# todo: entale stimpsoni, Dentalium
		# todo: Teinostoma litus-palmarum
		
		
		
		if ($line =~ m/^([A-Z][a-z]+)/)
		{			
			$genera_name = $1;
			print "$genera_name\n";
			$flag = 1;
		}			
		if ($line =~ m/^([a-z]+)\s$/)
		{
			my($species_name) = $1;
			print "$genera_name $species_name\n";
			$flag = 1;
		}
		if ($line =~ m/^([a-z]+), ([A-Z][a-z]+)\s$/)
		{
			# intorta, Olivella
			print "$2 $1\n";
			$flag = 1;
		}
		if ($flag == 0)
		{			
			print $line;
		}  
	}

# 


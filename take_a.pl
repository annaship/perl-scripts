#! /usr/bin/perl
$i = 0;

while(<STDIN>)
  {
	  my($line) = $_;
		chomp($line);
		if ($line =~ m/^A/)
		{			
			print "$line\n";
		}  
	}

# 


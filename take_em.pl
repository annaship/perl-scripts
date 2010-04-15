#! /usr/bin/perl

while(<STDIN>)
  {
	  my($line) = $_;
		chomp($line);
		if ($line =~ m/<em>([^<][^\/][^e][^m]+)<\/em>/)
		{			
			$t_name = $1;
			$t_name =~ s/<[^>]+>//g;                                                                                
			print "$t_name\n";
		}  
	}

  # if ($line =~ m/^([A-Z][a-z]+)/)                                                                    
  # {                                                                                                  
  #         $genera_name = $1;                                                                         
  #         print "$genera_name\n";                                                                    
  #         $flag = 1;                                                                                 
  # }                                                                                                  

# 


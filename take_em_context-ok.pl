#! /usr/bin/perl

while(<STDIN>)
  {
	  my($line) = $_;
		chomp($line);
		if ($line =~ m/<em>([^<][^\/][^e][^m]+)<\/em>/)
		{			
			$t_name = $1;
			$line =~ s/^.*([A-Z].*$t_name.*?\.).*$/$1/g;     
			$line =~ s/<[^>]+>//g;                                                                           
			$line =~ s/^($t_name.*?\.).*$/$1/g;    
			# if ($line =~ m/UUU/)
			# {
				print "$t_name --- $line\n\n";
			# }                                                                            
			
		}  
	}

  # if ($line =~ m/^([A-Z][a-z]+)/)                                                                    
  # {                                                                                                  
  #         $genera_name = $1;                                                                         
  #         print "$genera_name\n";                                                                    
  #         $flag = 1;                                                                                 
  # }                                                                                                  

# 


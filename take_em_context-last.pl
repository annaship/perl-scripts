#! /usr/bin/perl

while(<STDIN>)
  {
	  my($line) = $_;
		chomp($line);
		if ($line =~ m/<em>([^<][^\/][^e][^m]+)<\/em>/)
		{			
			$t_name = $1;
			$t_name_tags = "<em>$t_name</em>";
			$line =~ s/^.*([A-Z].*$t_name[^\.]*\.)\s*[A-Z].*$/$1/g;     
			$line =~ s/<[^>]+>//g;                                                                           
			$line =~ s/^($t_name.*?\.).*$/$1/g;    
			# $line =~ s/$t_name/$t_name_tags/g;    
			if ($line =~ m/$t_name/)
			{
				print "$t_name --- $line\n\n";
			}                                                                            
			
		}  
	}

  # if ($line =~ m/^([A-Z][a-z]+)/)                                                                    
  # {                                                                                                  
  #         $genera_name = $1;                                                                         
  #         print "$genera_name\n";                                                                    
  #         $flag = 1;                                                                                 
  # }                                                                                                  

# 


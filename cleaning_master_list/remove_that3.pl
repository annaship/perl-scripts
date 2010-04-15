#! /usr/bin/perl

#remove "bad" words
while(<STDIN>)
{
  my($line) = $_;
		unless ($line =~ m/\w*([^\sA-Za-z-]|\d)+\w* ?/g)
		{
			print $line;
		}
		
}



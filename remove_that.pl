#! /usr/bin/perl

while(<STDIN>)
{
  my($line) = $_;
		$line =~ s/<.+?>//g;
		print $line;
}



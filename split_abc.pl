#! /usr/bin/perl

while(<STDIN>)
  {
  my($line) = $_;
	$line =~ m/^(.).+\n^\1/;
			print $1;
	}



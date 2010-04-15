#! /usr/bin/perl

while(<STDIN>)
{
  my($line) = $_;
		$line =~ s/ /\n/g;
		print $line;
}



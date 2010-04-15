#! /usr/bin/perl

while(<STDIN>)
{
  my($line) = $_;
		$line =~ s/\\n/\n/g;
		print $line;
}



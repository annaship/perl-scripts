#! /usr/bin/perl

while(<STDIN>)
{
  my($line) = $_;
		$line =~ s/, /\n/g;
		$line =~ s/\]//g;
		$line =~ s/\[//g;
		$line =~ s/\n\n+/\n/g;
		$line =~ s/"//g;
		print $line;
}



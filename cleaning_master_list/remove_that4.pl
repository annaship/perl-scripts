#! /usr/bin/perl

while(<STDIN>)
{
  my($line) = $_;
	unless ($line =~ m/(\bvirus\b|\bunidentified\b|\bviruses\b)/g)
	{
		if ($line =~ m/^[A-Z][a-z-]+ +[a-z-]+ +[a-z-]+$/g or $line =~ m/^[A-Z][a-z-]+ +[a-z-]+$/g or $line =~ m/^[A-Z][a-z-]+$/g)
		{
			print $line;
		}
	}
}



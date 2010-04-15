#! /usr/bin/perl

while(<STDIN>)
  {
  my($line) = $_;
	if ($line =~ m/\i.+?\i0/)
	{
		$italic_tag = '\i0*';
		# $line =~ s/\\[^i].+\s//g;
		# if($string =~ m/($lookfor)/)
		# $line =~ s/<tname>\s*//g;
		# $line =~ s/\s*<\/tname>.*//g;
		# $line =~ s/\s\s+/ /g;
		$line =~ s/(\i.+?\i0)/URA\1URA/g;
		print $1;
	}
  }


\LetterSequence<Delimiter>
Note that a backslash begins each control word.

The LetterSequence is made up of lowercase alphabetic characters between "a" and "z" inclusive. RTF is case sensitive, and all RTF control words must be lowercase.

The delimiter marks the end of an RTF control word, and can be one of the following:

* A space. In this case, the space is part of the control word.

* A digit or a hyphen (-), which indicates that a numeric parameter follows. The subsequent digital sequence is then delimited by a space or any character other than a letter or a digit. The parameter can be a positive or a negative number. The range of the values for the number is generally -32767 through 32767. However, Word tends to restrict the range to -31680 through 31680. Word allows values in the range -2,147,483,648 to 2,147,483,648 for a small number of keywords (specifically \bin, \revdttm, and some picture properties). An RTF parser must handle an arbitrary string of digits as a legal value for a keyword. If a numeric parameter immediately follows the control word, this parameter becomes part of the control word. The control word is then delimited by a space or a nonalphabetic or nonnumeric character in the same manner as any other control word.

* Any character other than a letter or a digit. In this case, the delimiting character terminates the control word but is not actually part of the control word.


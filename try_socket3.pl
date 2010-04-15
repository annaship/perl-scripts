#!/usr/bin/perl -w

use IO::Socket;

my $sock = new IO::Socket::INET (PeerAddr => 'localhost',
                                    PeerPort => 3777, 
                                    Proto => 'tcp');
die "could not create socket: $!\n" unless $sock;                                        

printf $sock ("GET / HTTP/1.0\n");
printf $sock ("Host: localhost\n");
printf $sock ("Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8");
printf $sock ("User-Agent: Mozilla/5\n");
printf $sock ("Connection: keepalive\n");
printf $sock ("\n\n");

while (<$sock>) {
    if($_=~ m/validate_response/i) {
         last;
    }
     else{
         print $_;
    }
}
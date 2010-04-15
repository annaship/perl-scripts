#!/usr/bin/perl -w
 use IO::Socket;
 use Net::hostent;              # for OO version of gethostbyaddr

# # TCP Port
$PORT = 1155;     

# TCP Port
# $PORT = 9000;                  # pick something not in use

# Create Socket Instance
$client2 = IO::Socket::INET->new(Proto     => 'tcp',
                                 LocalPort => $PORT,
                                 Listen    => 16,
                                 Reuse     => 1);
							# Cant Start Daemon
							die "can't setup server" unless $client2;

							# Daemon Up And Running
							print "[Server $0 accepting clients]\015\012";
							 while ($client2 = $client2->accept()) {
								print "URA";
							}


# my $s = IO::Socket::INET->new('127.127.0.1:1155');

print "HERE0\n";

# 
# # Create Socket Instance
# $client2 = IO::Socket::INET->new( Proto     => 'tcp',
#                                  LocalPort => $PORT,
#                                  Listen    => SOMAXCONN,


# my $s = new IO::Socket (
# 	# LocalHost => 'localhost',
# 	LocalPort => $PORT,
# 	Proto => 'tcp',
# 	Listen => 16,
# 	Reuse => 1,
# );
# die "Could not create socket: $!\n" unless $s; 
# print "HERE1\n";
# 
# my ($ns, $buf); 
# print "HERE2\n";
# 
# while( $ns = $s->accept() ) { # wait for and accept a connection 
# 	print "HERE3\n";
# 
#  while( defined( $buf = <$ns> ) ) { # read from the socket 
# print "HERE\n";
#  # do some processing 
# 
# } 
# 
# } 
# 
# close($s);
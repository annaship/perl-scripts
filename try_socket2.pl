#!/usr/bin/perl -w

#########################################################
# Emcb Remote Access Administration Server (RAAS(iserver-0.1))
#########################################################
# All you need to do to get the server up and running...
#
use IO::Socket;
use Net::hostent;              # for OO version of gethostbyaddr

# TCP Port
$PORT = 1155;                  # pick something not in use

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
  
  # Flush The Client's STDOUT
  $client2->autoflush(1);
  
  # Welcome The User To The System
  print $client2 "Welcome to $0\015\012Type help for command list.\015\012";
  $hostinfo = gethostbyaddr($client2->peeraddr);
  printf "[Connect from %s]\015\012", $hostinfo->name || $client2->peerhost;
  print $client2 "root\@iserver \$ ";
  while ( <$client2>) {
    next unless /\S/;       # blank line
    if    (/quit|exit|kill/i)    { last;                                     }
    elsif (/env/i)          { print $client2 `set`;          }
    elsif (/motd/i )        { print  $client2 `cat /etc/motd 2>&1`;      }
    elsif (/date|time/i)    { printf $client2 "%s\015\012", scalar localtime;  }
    elsif (/who/i )         { print  $client2 `who 2>&1`;                }
    elsif (/cookie/i )      { print  $client2 `/usr/games/fortune 2>&1`; }
    elsif (/motd/i )        { print  $client2 `cat /etc/motd 2>&1`;      }

    else {
      $usage = "\015\012\015\012Usage:

[exit|quit|kill] - Quit The Client
[date|time] - Display The Current Date/Time
[env|set] - Display The Curfrent Enviroment Variables\015\012\015\012";
      print($usage);
    }
  } continue {
     print $client2 "root\@iserver \$ ";
  }
  close $client2;
}

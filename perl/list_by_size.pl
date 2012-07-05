#!/usr/bin/perl
# show files by descending size, starting at directories
# named as arguments
use File::Find;
find (sub {$size{$File::Find::name} = -s _ if -f;}, @ARGV);
for (sort {$size{$b} <=> $size{$a}} keys %size) {
  printf "%10d %s\n", $size{$_}, $_;
}
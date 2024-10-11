! /usr/bin/perl -w
#################################
use strict;
$|=1;           # don't buffer output


for (my $i=1; $i<=10000; $i+=1 )
{
        my $r= 2*rand()-1;   # value range: (-1,1)


        print "$i $r\n";


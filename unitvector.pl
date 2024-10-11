r#! /usr/bin/perl -w
#################################
use strict;
$|=1;           # don't buffer output


for (my $i=1; $i<=10000; $i+=1 )
{
        my $r1= 2*rand()-1;   # value range: (-1,1)
        my $r2= 2*rand()-1;   # value range: (-1,1)
        my $r3= 2*rand()-1;   # value range: (-1,1)

        my $rho = sqrt($r1*$r1 + $r2*$r2 + $r3*$r3);


        # unin vector
        my ($u1, $u2, $u3) = ($r1/$rho, $r2/$rho,  $r3/$rho);

        #print "$i   $u1 $u2 $u3\n";
        printf "%-4d  %9.6f %9.6f %9.6f\n", $i,  $u1, $u2, $u3;

}


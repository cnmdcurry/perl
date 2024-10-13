#!/usr/bin/perl
use warnings;
my $N = 1000;  # number of steps
my @R = ( [0,0,0] );  # initial position
for (my $i=1; $i<=$N; $i+=1 )
{
        my $r0= 2*rand()-1;   # value range: (-1,1)
        my $r1= 2*rand()-1;   # value range: (-1,1)
        my $r2= 2*rand()-1;   # value range: (-1,1)
        my $rho = sqrt($r0*$r0 + $r1*$r1 + $r2*$r2);   # length

        my ($u0, $u1, $u2) = ($r0/$rho, $r1/$rho,  $r2/$rho); # unin vector

        $R[$i] = [ $R[$i-1][0]+$u0,                                                      
                   $R[$i-1][1]+$u1,
                   $R[$i-1][2]+$u2 ];
}  #for i


 for (my $i=0; $i<=$N; $i+=1 ) {
       printf "%-4d  %9.6f %9.6f %9.6f\n", $i,  $R[$i][0], $R[$i][1], $R[$i][2]; 
}

 #compute end-to-end distance

my $Re=sqrt(  ($R[$N][0]-$R[0][0])**2
            + ($R[$N][1]-$R[0][1])**2
            + ($R[$N][2]-$R[0][2])**2  );


printf "# end-to-end distance: (N, Re)=($N, $Re)\n";

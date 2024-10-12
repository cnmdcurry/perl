#!/usr/bin/perl
use warnings;
# 哈希
=pod
@age = (25, 30, 40);
@name = ("John", "Paul", "Lisa");
print " age = $age[0]\n";
print " age = $age[1]\n";
print " age = $age[2]\n";
print " name = $name[0]\n";
print " name = $name[1]\n"; 
print " name = $name[2]\n";

%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);
print "John Paul's age = $data{'John Paul'}\n";
print "Lisa's age = $data{'Lisa'}\n";
print "Kumar's age = $data{'Kumar'}\n";
=cut
$a = 100 ;
unless( $a == 10 ){
    print "a 給定的條件為 \'fales\'\n" ;
}else {
    print " a 給定的條件為 \'true\'\n " ;
}
print "a得值為$a\n" ;

 

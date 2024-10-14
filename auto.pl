#!/usr/bin/perl
use strict;
use warnings;

# 定義輸出檔案
my $output_file = "randomwalk_output.txt";

# 清空輸出檔案
open(my $fh, ">", $output_file) or die "Cannot open $output_file: $!";
close($fh);

# 重複執行 randomwalk.pl 100 次
for (my $i = 1; $i <= 100; $i++)  {
    open(my $fh, ">>", $output_file) or die "Cannot open $output_file: $!";
    print $fh "Run #$i\n";
    
    # 執行 randomwalk.pl 並將輸出追加到檔案中
    my $output = `perl randomwalk.pl`; #反引號
    print $fh $output;
    print $fh "\n";
    
    close($fh);
}

print "Completed 100 runs. Output saved to $output_file\n";
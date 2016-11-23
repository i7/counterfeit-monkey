#!/usr/bin/perl -w
# -*- coding: UTF-8 -*-

use strict;
use warnings;


my $opcodes;
my $opcodes_old;
my $difference;

open my $fh, "< :encoding(UTF-8)", "profile-report-df.txt" or die "Could not open file: profile-report.txt!";

while (my $line = <$fh>) {
   ($opcodes) = ($line =~ /^Total opcodes: (\d+)/);
   if ($opcodes) {
     print "Total number of opcodes called: $opcodes \n";
     last;
   }
}

close $fh;

open $fh, "< :encoding(UTF-8)", "profile-report-df_old.txt" or die "Could not open file: profile-report_old.txt!";

while (my $line = <$fh>) {
   ($opcodes_old) = ($line =~ /^Total opcodes: (\d+)/);
   if ($opcodes_old) {
     print "Total number of opcodes called in old profile report: $opcodes_old \n";
     $difference = $opcodes - $opcodes_old;
     if ($difference < 0) {
     	print "Decrease: ";
     }
     else {
     	print "\nIncrease: ";
     }
     print "$difference ops\n";
     last;
   }
}

close $fh;
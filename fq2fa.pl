#!usr/bin/perl -w
use strict;

die "Usage: perl $0 [.fq] [output filename] \n" unless (@ARGV == 2);
if ($ARGV[0] =~ /gz$/){
	open FQ, "gzip -dc $ARGV[0] |" || die "$!\n";
} else {
	open FQ, "<$ARGV[0]" || die "$!\n";
}
open FA, ">$ARGV[1].fa" or die "$ARGV[1].fa $!\n";
my $null;
while(<FQ>){
        if(/^@/){
                print FA ">$_";
                $null = <FQ>;
                print FA "$null";
                $null = <FQ>;
                $null = <FQ>;
        }
}
print "DONE!";
close FA;
close FQ;
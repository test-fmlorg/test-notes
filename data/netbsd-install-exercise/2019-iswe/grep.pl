#!/usr/bin/env perl

use strict;
use Carp;
use Encode qw(decode encode is_utf8);

# Object interface
use Text::CSV_XS;

my @rows;
my $index = $ARGV[0] || 0;

# Read/parse CSV
my $csv = Text::CSV_XS->new ({ binary => 1, auto_diag => 1 });
open my $fh, "<:encoding(utf8)", "test.csv" or die "test.csv: $!";
while (my $row = $csv->getline ($fh)) {
    my $s = $row->[$index];

    printf "%s\n", ( is_utf8($s) ? encode("UTF-8", $s) : $s );
}
close $fh;

exit 0;

#use strict;
use warnings;

$n = 'outer';
print "$n\n";
foreach $n (1..3) {
    print "$n\n";
    &print_n;
    print "$n\n";
}
print "$n\n";

sub print_n {
    print "&print_n: $n\n";
    $n .= 'x';
    print "&print_n: $n\n";
}

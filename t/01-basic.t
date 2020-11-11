use v6.*;
use Test;
use P5fileno;

plan 4;

is fileno($*IN),  0, 'is fileno STDIN 0';
is fileno($*OUT), 1, 'is fileno STDIN 1';
is fileno($*ERR), 2, 'is fileno STDIN 2';

ok fileno(open($?FILE)) > 2, 'is fileno of an opened $?FILE a valid value?';

# vim: expandtab shiftwidth=4

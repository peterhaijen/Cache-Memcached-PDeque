#!/usr/bin/perl

BEGIN { unshift @INC, 'lib'; }

use Cache::Memcached::PDeque;
use Data::Dump qw(dd quote pp);
use Test::More;

my $dq = Cache::Memcached::PDeque->new( name => 'foreach', max_prio => 1 );
my @list = ( 1..10 );
plan tests => scalar @list;

sub do_something {
    my ( $el, $param ) = @_;
    push @{$param}, $el**2;
}

# Push all elements of @list into $dq
map { $dq->push($_) } @list;

# Fill @squared with the square of each element in $dq
my @squared;
$dq->foreach(\&do_something, \@squared);

# Test the result
map { is shift @squared, $_**2, "Test square($_) == " . $_**2 } @list;

$dq->_flush;

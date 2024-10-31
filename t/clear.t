#!/usr/bin/perl

BEGIN { unshift @INC, 'lib'; }

use Cache::Memcached::PDeque;
use Data::Dump qw(dd quote pp);
use Test::More tests => 16;

my $dq = Cache::Memcached::PDeque->new( name => 'foreach', max_prio => 2 );

ok($dq->push(1,'1a'));
ok($dq->push(1,'1b'));
ok($dq->push(2,'2a'));
ok($dq->push(2,'2b'));
ok($dq->push(2,'2c'));
is($dq->size, 5);
ok($dq->_check);

is($dq->clear(1), 2);
ok($dq->_check);
is($dq->size, 3);

is($dq->clear(1), 0);
ok($dq->_check);
is($dq->size, 3);

is($dq->clear(2), 3);
ok($dq->_check);
is($dq->size, 0);

$dq->_flush;

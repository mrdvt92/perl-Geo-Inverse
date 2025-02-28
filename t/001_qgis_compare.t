#!/usr/bin/perl
use strict;
use warnings;
use Test::Number::Delta;
use Test::More tests => 3;
BEGIN{use_ok('Geo::Inverse');};

my $o = Geo::Inverse->new;
isa_ok($o, "Geo::Inverse");

my $dist = $o->inverse(38.88975433369679, -77.0346048600422, 38.889880908829824, -77.00897613176106);

delta_within($dist, 2223.608, 1e-3, 'dist compares to qgis to the mm');


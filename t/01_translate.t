use strict;
use utf8;
use Encode;

use Test::More;

use Acme::SuddenlyDeath;

my $got;
my $expect;

$got = Encode::decode_utf8(suddenly_death("突然の死"));
$expect = "＿人人人人人＿\n＞ 突然の死 ＜\n￣^Y^Y^Y^Y^￣";

is($got, $expect, 'multi: 1');

$got = Encode::decode_utf8(suddenly_death("suddenly death"));
$expect = "＿人人人人人人人人＿\n＞ suddenly death ＜\n￣^Y^Y^Y^Y^Y^Y^Y^￣";

is($got, $expect, 'multi: 2');

$got = Encode::decode_utf8(suddenly_death("突然の death"));
$expect = "＿人人人人人人人＿\n＞ 突然の death ＜\n￣^Y^Y^Y^Y^Y^Y^￣";

is($got, $expect, 'multi: 3');

done_testing;

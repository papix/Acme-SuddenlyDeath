use strict;
use utf8;
use Acme::SuddenlyDeath;
use Encode;
use Test::More;

my $got;
my $expect;

$got = Encode::decode_utf8(suddenly_death_single("突然の死"));
$expect = '＿人人人人人＿＞ 突然の死 ＜￣^Y^Y^Y^Y^￣';
is($got, $expect, 'single: 1');

$got = Encode::decode_utf8(suddenly_death_single("suddenly death"));
$expect = '＿人人人人人人人人＿＞ suddenly death ＜￣^Y^Y^Y^Y^Y^Y^Y^￣';
is($got, $expect, 'single: 2');

$got = Encode::decode_utf8(suddenly_death_single("突然の death"));
$expect = '＿人人人人人人人＿＞ 突然の death ＜￣^Y^Y^Y^Y^Y^Y^￣';
is($got, $expect, 'single: 3');

$got = Encode::decode_utf8(suddenly_death_single("突然の\ndeath"));
$expect = "＿人人人人＿＞ 突然の ＜＞  death ＜￣^Y^Y^Y^￣";
is($got, $expect, 'single: 4');

done_testing;

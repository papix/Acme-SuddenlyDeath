use strict;
use utf8;
use Acme::SuddenlyDeath;
use Encode qw/decode_utf8/;
use Test::More;

my $got;
my $expect;

subtest 'suddenly_death' => sub {
    $got = decode_utf8(suddenly_death("突然の死"));
    $expect = "＿人人人人人＿\n＞ 突然の死 ＜\n￣^Y^Y^Y^Y^￣";
    is($got, $expect, 'JP');

    $got = decode_utf8(suddenly_death("suddenly death"));
    $expect = "＿人人人人人人人人＿\n＞ suddenly death ＜\n￣^Y^Y^Y^Y^Y^Y^Y^￣";
    is($got, $expect, 'EN');

    $got = decode_utf8(suddenly_death("突然の death"));
    $expect = "＿人人人人人人人＿\n＞ 突然の death ＜\n￣^Y^Y^Y^Y^Y^Y^￣";
    is($got, $expect, 'JP/EN');

    $got = decode_utf8(suddenly_death("突然の\ndeath"));
    $expect = "＿人人人人＿\n＞ 突然の ＜\n＞  death ＜\n￣^Y^Y^Y^￣";
    is($got, $expect, 'JP/EN + BR');

    done_testing;
};

subtest 'sudden_death' => sub {
    $got = sudden_death("突然の死");
    $expect = "＿人人人人人＿\n＞ 突然の死 ＜\n￣^Y^Y^Y^Y^￣";
    is($got, $expect, 'JP');

    $got = sudden_death("suddenly death");
    $expect = "＿人人人人人人人人＿\n＞ suddenly death ＜\n￣^Y^Y^Y^Y^Y^Y^Y^￣";
    is($got, $expect, 'EN');

    $got = sudden_death("突然の death");
    $expect = "＿人人人人人人人＿\n＞ 突然の death ＜\n￣^Y^Y^Y^Y^Y^Y^￣";
    is($got, $expect, 'JP/EN');

    $got = sudden_death("突然の\ndeath");
    $expect = "＿人人人人＿\n＞ 突然の ＜\n＞  death ＜\n￣^Y^Y^Y^￣";
    is($got, $expect, 'JP/EN + BR');

    done_testing;
};

done_testing;

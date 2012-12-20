package Acme::SuddenlyDeath;
use strict;
use warnings;
use utf8;

use Encode;
use Text::VisualWidth::UTF8;
use base 'Exporter';

our @EXPORT = qw/ suddenly_death suddenly_death_single /;

use version; our $VERSION = '0.01';

sub suddenly_death {
    my $word = Encode::decode_utf8(shift);

    my $ret;
    my $length = ( Text::VisualWidth::UTF8::width($word) + 2 ) / 2;

    $ret = '＿' . '人' x $length . '＿' . "\n";
    $ret .= '＞ ' . $word . ' ＜' . "\n";
    $ret .= '￣' . '^Y' x ( $length - 1 ) . '^￣';

    return Encode::encode_utf8($ret);
}

sub suddenly_death_single {
    my $word = Encode::decode_utf8(shift);

    my $ret;
    my $length = ( Text::VisualWidth::UTF8::width($word) + 2 ) / 2;

    $ret = '＿' . '人' x $length . '＿';
    $ret .= '＞ ' . $word . ' ＜';
    $ret .= '￣' . '^Y' x ( $length - 1 ) . '^￣';

    return Encode::encode_utf8($ret);
}

1;
__END__

=encoding utf8

=head1 NAME

Acme::SuddenlyDeath - Suddenly death (突然の死) generator

=head1 SYNOPSIS

  use Acme::Suddenly::Death;

  print suddenly_death('突然の死')."\n"
  # outputs => 
  #   ＿人人人人人＿
  #   ＞ 突然の死 ＜
  #   ￣^Y^Y^Y^Y^￣
  print suddenly_death_single('突然の死')."\n"
  # outputs =>
  #   ＿人人人人人＿＞ 突然の死 ＜￣^Y^Y^Y^Y^￣

=head1 DESCRIPTION

Acme::SuddenlyDeath is the suddenly death generator.
This module can generate ASCII art of 'suddenly death' style from any strings.
If you would like to know about suddenly death, please refer to the following web site (Japanese Web Site).
L<http://dic.nicovideo.jp/a/%E7%AA%81%E7%84%B6%E3%81%AE%E6%AD%BB>

=head1 METHODS

=over

=item suddenly_death

This method needs a string as parameter.
It returns multiple line ASCII art of 'suddenly death' style which was generated from string.

=item suddenly_death_single

This method needs a string as parameter.
It returns one line ASCII art of 'suddenly death' style which was generated from string.

=back

=head1 AUTHOR

papix E<lt>papix2011@gmail.comE<gt>

=head1 DEPENDENCIES

Text::VisualWidth 0.02 or later.

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

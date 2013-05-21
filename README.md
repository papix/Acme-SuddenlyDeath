# NAME

Acme::SuddenlyDeath - Suddenly death (突然の死) generator

# SYNOPSIS

    use Acme::SuddenlyDeath;

    print suddenly_death('突然の死')."\n"
    # outputs =>
    #   ＿人人人人人＿
    #   ＞ 突然の死 ＜
    #   ￣^Y^Y^Y^Y^￣
    print suddenly_death("突然の\n死")."\n"
    #   ＿人人人人＿
    #   ＞ 突然の ＜
    #   ＞   死   ＜
    #   ￣^Y^Y^Y^￣
    print suddenly_death_single('突然の死')."\n"
    # outputs =>
    #   ＿人人人人人＿＞ 突然の死 ＜￣^Y^Y^Y^Y^￣

# DESCRIPTION

Acme::SuddenlyDeath is the suddenly death generator.
This module can generate ASCII art of 'suddenly death' style from any strings.
If you would like to know about suddenly death, please refer to the following web site (Japanese Web Site).
[http://dic.nicovideo.jp/a/%E7%AA%81%E7%84%B6%E3%81%AE%E6%AD%BB](http://dic.nicovideo.jp/a/%E7%AA%81%E7%84%B6%E3%81%AE%E6%AD%BB)

# METHODS

- suddenly\_death

    This method needs a string as parameter.
    It returns multiple line ASCII art of 'suddenly death' style which was generated from string.

- suddenly\_death\_single

    This method needs a string as parameter.
    It returns one line ASCII art of 'suddenly death' style which was generated from string.

# AUTHOR

papix <mail@papix.net>

# DEPENDENCIES

Text::VisualWidth 0.02 or later.

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

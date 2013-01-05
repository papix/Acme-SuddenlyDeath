use inc::Module::Install;
name 'Acme-SuddenlyDeath';
all_from 'lib/Acme/SuddenlyDeath.pm';

requires 'Text::VisualWidth';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
test_requires 'Encode';

auto_set_repository;
auto_include;
WriteAll;

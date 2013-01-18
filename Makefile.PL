use inc::Module::Install;
name 'Acme-SuddenlyDeath';
all_from 'lib/Acme/SuddenlyDeath.pm';

requires 'Text::VisualWidth' => '0.02';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More' => '0.98';
test_requires 'Encode'     => '2.39';

auto_set_repository;
auto_include;
WriteAll;

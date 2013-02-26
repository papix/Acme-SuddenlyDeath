use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    name                => 'Acme-SuddenlyDeath',
    module_name         => 'Acme::SuddenlyDeath',
    license             => 'perl',
    dist_author         => q{papix <mail@papix.net>},
    dist_version_from   => 'lib/Acme/SuddenlyDeath.pm',
    dynamic_config    => 0,

    build_requires => {
        'Test::More' => '0.98',
        'Encode'     => '2.39',
    },
    configure_requires => {
        'Module::Build' => '0.40',
    },
    requires => {
        'base' => 0,
        'Text::VisualWidth' => '0.02',
    },

    no_index => { 'directory' => ['inc'] },

    test_files => (-d '.git' || $ENV{RELEASE_TESTING}) ? 't/ xt/' : 't/',
    recursive_test_files => 1,

    add_to_cleanup => [ 'Acme-SuddenlyDeath-*' ],
    create_readme  => 1,
    create_license => 1,
);

$builder->create_build_script();

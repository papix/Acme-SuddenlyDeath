requires 'Text::VisualWidth', '0.02';
requires 'Encode', '2.39';
requires 'parent', '0';
requires 'Exporter', '0';

on 'configure' => sub {
    requires 'Module::Build' => '0.38';
};

on build => sub {
    requires 'Test::More', '0.98';
};

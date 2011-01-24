use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'perlutils',
    AUTHOR              => q{Magnus Woldrich <trapd00r@trapd00r.se>},
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    EXE_FILES =>           [

      'depends',
      'func',
      'version',
      'findinc',

    ],

    PREREQ_PM => {
        'Term::ExtendedColor' => 0.16,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
);

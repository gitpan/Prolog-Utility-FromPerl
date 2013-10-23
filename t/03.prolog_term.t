use Test::More tests => 2;

BEGIN {
use_ok( 'Prolog::Utility::FromPerl' );
}

my $term = eval {
    prolog_term('yolo',{ foo => 1, bar => [2,3], baz => { a => 123 } });
};

ok(!$@ && $term && $term eq "yolo(bar(['2','3']),baz(a('123')),foo('1'))","prolog_term: $term") or diag($@);


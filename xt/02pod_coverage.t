use Test::More skip_all => 'Shares API with RDF::Query';
use Test::Pod::Coverage;

my @modules = qw(RDF::QueryX::Lazy);
pod_coverage_ok($_, "$_ is covered")
	foreach @modules;
done_testing(scalar @modules);


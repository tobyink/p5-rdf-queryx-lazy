use Test::More tests => 2;
use RDF::QueryX::Lazy;

my $query = RDF::QueryX::Lazy->new(<<SPARQL);
SELECT *
WHERE {
	?person foaf:name ?name .
	OPTIONAL { ?person foaf:homepage ?page . }
}
SPARQL

ok($query, 'Yeah, probably works');
is($query->as_sparql."\n", <<SPARQL, 'Yeah, works');
PREFIX bibo: <http://purl.org/ontology/bibo/>
PREFIX bio: <http://purl.org/vocab/bio/0.1/>
PREFIX cc: <http://creativecommons.org/ns#>
PREFIX dc: <http://purl.org/dc/elements/1.1/>
PREFIX doap: <http://usefulinc.com/ns/doap#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>
PREFIX frbr: <http://purl.org/vocab/frbr/core#>
PREFIX geo: <http://www.w3.org/2003/01/geo/wgs84_pos#>
PREFIX gr: <http://purl.org/goodrelations/v1#>
PREFIX ical: <http://www.w3.org/2002/12/cal/ical#>
PREFIX og: <http://ogp.me/ns#>
PREFIX org: <http://www.w3.org/ns/org#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfa: <http://www.w3.org/ns/rdfa#>
PREFIX rdfg: <http://www.w3.org/2004/03/trix/rdfg-1/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX rev: <http://purl.org/stuff/rev#>
PREFIX rss: <http://purl.org/rss/1.0/>
PREFIX sioc: <http://rdfs.org/sioc/ns#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
PREFIX vann: <http://purl.org/vocab/vann/>
PREFIX vcard: <http://www.w3.org/2006/vcard/ns#>
PREFIX void: <http://rdfs.org/ns/void#>
PREFIX wdrs: <http://www.w3.org/2007/05/powder-s#>
PREFIX wot: <http://xmlns.com/wot/0.1/>
PREFIX xhv: <http://www.w3.org/1999/xhtml/vocab#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
SELECT * WHERE {
	?person foaf:name ?name .
	OPTIONAL {
		?person foaf:homepage ?page .
	}
}
SPARQL

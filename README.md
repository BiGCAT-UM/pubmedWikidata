# PubMed-Wikidata mashup

Simple SPARQLs to get information about PubMed identifiers from Wikidata. The idea
is that if you provide a set of PubMed identifiers, some bits of information about
that set may be of use.

## Preparing your list of PubMed identifers

The input file `pmids.txt` has a simple structure: a list of PubMed identifiers
in quotes, for example:

```
"15613"
"20597"
```

## Scripts

The first script is `commonAuthors.template`, which determines which authors are
most common to the given list of PubMed identifiers, sorted by decreasing number
of articles they authored.

The second script is `citationCounts.template`, which uses the WikiCite data to
return how often each PubMed article is cited.

## Running the code

The code is most easily executed by running the `make` command, on a suitable
platform with `curl` installed. The `Makefile` will takes the SPARQL templates,
inject the PubMed identifiers and run these queries against the Wikidata
SPARQL end point and save the output as a CSV file.

## Acknowledgments

This small project depends on the great work from Curl, Wikidata, WikiCite,
and many others. Please cite them, and not only this repository, as they provide
parts of the magic (tools, data) too.

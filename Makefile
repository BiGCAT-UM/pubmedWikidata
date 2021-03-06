all: citationCounts.csv \
     commonAuthors.csv

clean:
        \rm -Rf *.csv *.rq

%.rq: %.template pmids.txt
        sed -e '/PMIDS/rpmids.txt' $< > $@

%.csv: %.rq
        curl -H "Accept: text/csv" --data-urlencode query@$< -X POST https://query.wikidata.org/sparql -o $@

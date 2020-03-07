#!/bin/bash


ELASTICSEARCH_URL="http://localhost:9200"

#-----------

# Index Lifecycle Polic
curl --silent -XPUT -H 'Content-Type: application/json' ${ELASTICSEARCH_URL}/_ilm/policy/speedtest-ilm-policy?pretty -d @speedtest-ilm-policy.json

# Index Template
curl --silent -XPUT -H 'Content-Type: application/json' ${ELASTICSEARCH_URL}/_template/speedtest-template?pretty -d @speedtest-template.json

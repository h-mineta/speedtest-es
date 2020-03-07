#!/bin/bash

SPEEDTTEST_CLI="${HOME}/.local/bin/speedtest-cli"
SPEEDTTEST_OPTIONS=""
ELASTICSEARCH_URL="http://localhost:9200"

#-----------

epoch=$(date '+%s')
datestr=$(date -d @${epoch} '+%Y.%m.%d')
result=$(${SPEEDTTEST_CLI} --secure --json ${SPEEDTTEST_OPTIONS})

curl --silent -XPUT -H 'Content-Type: application/json' ${ELASTICSEARCH_URL}/speedtest-${datestr}/_doc/${epoch} -d "${result}"

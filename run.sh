#!/bin/bash

SPEEDTEST_CLI="${HOME}/.local/bin/speedtest-cli"
SPEEDTEST_OPTIONS=""
ELASTICSEARCH_URL="http://localhost:9200"

#-----------

epoch=$(date '+%s')
datestr=$(date -d @${epoch} '+%Y.%m.%d')
result=$(${SPEEDTEST_CLI} --secure --json ${SPEEDTEST_OPTIONS})

curl --silent -XPUT -H 'Content-Type: application/json' ${ELASTICSEARCH_URL}/speedtest-${datestr}/_doc/${epoch} -d "${result}"

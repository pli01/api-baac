#!/bin/bash
#
# import json file via http POST to api url
# TODO: Add token
#
datafile="${1:-caracteristiques-2018.json}"
url="${2:-http://localhost/caracteristiques}"

cat ${datafile} | \
   jq -crM '.[]|.'  | \
    parallel --block-size 10M -n1 -j20  --pipe "cat | curl -s -H 'Content-Type: application/json' -X POST ${url} --data-binary @-"
#  while read a ; do echo "$a" | curl -H "Content-Type: application/json"  -X  POST ${url} -d @- ; done

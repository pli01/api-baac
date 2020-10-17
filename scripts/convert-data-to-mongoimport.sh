#!/bin/bash
#
# import json file via mongoimport
# TODO: replace date
# TODO: Add token
#
input_file="${1:-caracteristiques-2018.json}"
output_file="${2:-caracteristiques-2018.json.import}"

cat $input_file  | \
  jq -r '.[]|.  += {"published_at":{"$date":"2020-10-16T17:48:45.248Z"}, "createdAt":{"$date":"2020-10-16T17:48:45.405Z"},"updatedAt":{"$date":"2020-10-16T17:48:45.405Z"},"__v":0 }' \
    > $output_file

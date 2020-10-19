#!/bin/bash
#
# import json file via mongoimport
# TODO: replace date
# TODO: Add token
#
for f in ${DATA_SETS} ; do
  input_file="${f}.json"
  output_file="${f}.json.import"
  echo "# $input_file to $output_file"

  cat $input_file  | \
    jq -r '.[]|.  += {"published_at":{"$date":"2020-10-16T17:48:45.248Z"}, "createdAt":{"$date":"2020-10-16T17:48:45.405Z"},"updatedAt":{"$date":"2020-10-16T17:48:45.405Z"},"__v":0 }' \
      > $output_file
done

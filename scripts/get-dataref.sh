#!/bin/bash
#
# get data references from data gouv
#  Tips: title with "_" are < 2016
#  Tips: title with "-" are > 2016
#
dataref=https://www.data.gouv.fr/datasets/53698f4ca3a729239d2036df/rdf.json

curl -s -o - $dataref | \
   jq -r '."@graph"[]|.title + " " + .downloadURL' | \
   egrep -E '^vehicules-|^usagers-|^lieux-|^caracteristiques-' |sort

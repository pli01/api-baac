#!/bin/bash
basename=$(basename $0)
ret=1
echo "# build services (api,db) in prod mode"
time make build
ret=$?
if [ "$ret" -gt 0 ] ; then
  echo "$basename build-all ERROR"
  exit $ret
fi
docker images

time make down up

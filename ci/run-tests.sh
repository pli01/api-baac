#!/bin/bash
basename=$(basename $0)
ret=1
echo "# prepare conf"
cp .env.example .env

echo "# build services (api,db) in prod mode"
time make build
ret=$?
if [ "$ret" -gt 0 ] ; then
  echo "$basename build-all ERROR"
  exit $ret
fi
docker images

ret=1
echo "# run all services (api,db) in prod mode"
time make up
ret=$?
if [ "$ret" -gt 0 ] ; then
  echo "$basename up ERROR"
  exit $ret
fi
docker ps

ret=1
echo "# test all services up&running"
time make test
ret=$?
if [ "$ret" -gt 0 ] ; then
  echo "$basename test ERROR"
  exit $ret
fi

ret=1
echo "# remove all services"
time make down
ret=$?
if [ "$ret" -gt 0 ] ; then
  echo "$basename down ERROR"
  exit $ret
fi

exit $ret

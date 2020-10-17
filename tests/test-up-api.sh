#!/bin/bash
#
# test api
#
set -e

basename=$(basename $0)
echo "# $basename ${APP} ${APP_VERSION}"

ret=0
APP=api-baac
url=localhost

echo "# Test ${APP} up"
set +e
timeout=120;
test_result=1
until [ "$timeout" -le 0 -o "$test_result" -eq "0" ] ; do
        (curl  -s -L $url | grep '"environment"')
        test_result=$?
        echo "Wait $timeout seconds: ${APP} up $test_result";
        (( timeout-- ))
        sleep 1
done
if [ "$test_result" -gt "0" ] ; then
        ret=$test_result
        echo "ERROR: ${APP} en erreur"
        exit $ret
fi

exit $ret


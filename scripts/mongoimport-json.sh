#!/bin/bash
set -x
[ -n "$DATABASE_URI" ] && dc_arg="-e DATABASE_URI=$DATABASE_URI"
[ -n "$DATABASE_NAME" ] && dc_arg="$dc_arg -e DATABASE_NAME=$DATABASE_NAME"

docker-compose -f docker-compose.db.yml run $dc_arg --rm --entrypoint /bin/bash db-import -c 'mongoimport --db $DATABASE_NAME --collection caracteristiques --type=json --drop --file /import/caracteristiques-2018.json.import --uri $DATABASE_URI/?authSource=admin'

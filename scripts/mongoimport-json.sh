#!/bin/bash
set -x
[ -n "$DATABASE_URI" ] && dc_arg="-e DATABASE_URI=$DATABASE_URI"
[ -n "$DATABASE_NAME" ] && dc_arg="$dc_arg -e DATABASE_NAME=$DATABASE_NAME"
#[ -n "$DATA_SETS" ] && dc_arg="$dc_arg -e DATA_SETS=$DATA_SETS"
export DATA_SETS

docker-compose -f docker-compose.db.yml run $dc_arg -e DATA_SETS="$DATA_SETS" --rm --entrypoint /bin/bash db-import -c 'for f in $DATA_SETS ; do file=$f.json.import ; collection=$(echo $f |sed -e "s/-.*//") ; mongoimport --db $DATABASE_NAME --collection $collection --type=json --drop --file /import/$file --uri $DATABASE_URI/?authSource=admin ; done'

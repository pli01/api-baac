#!/bin/bash
docker exec -it api_mongo /bin/bash -c 'mongo --authenticationDatabase=admin  $DATABASE_URI/$DATABASE_NAME'

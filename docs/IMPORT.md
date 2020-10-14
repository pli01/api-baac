# Import data

## Dirty Steps
* get data from ref site
```
( cd data ; bash ../scripts/get-datasets.sh )
```
* convert csv to json
```
docker-compose -f docker-compose.import.yml up --force-recreate
docker-compose -f docker-compose.import.yml down
```
* import json to api via http POST
```
( cd data ; bash ../scripts/import-datasets.sh )
```

# Import data

## Usefull commands
* Following commands will do get data from data.gouv, convert csv to json, and import via rest api or mongoimport
````bash
make import
```
## Dirty details Steps
* get data from ref site
```
( cd data ; bash ../scripts/get-datasets.sh )
```
* convert csv (latin1) to json
```
docker-compose -f docker-compose.import.yml up --force-recreate
docker-compose -f docker-compose.import.yml down
```
* import json to api via http POST
```
( cd data ; bash ../scripts/import-datasets.sh )
```

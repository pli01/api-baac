# Deploy

## On docker host
* build image
```
make build
```
* start stack
```
make up
```
* stop stack
```
make down
```

## On heroku / mongoatlas
* On mongoatlas:
  * create project/cluster
  * add whitelist
  * create admin account (strapi, auto password)
  * get MONGO_URI, in the form of `DATABASE_URI=mongodb+srv://<username>:<password>@cluster0.XXXX.mongodb.net`

* On heroku:
  * create api-baac app
  * Deployment method: github connect this repo
  * Set Stack container type
```
heroku -a api-baac stack:set container
```

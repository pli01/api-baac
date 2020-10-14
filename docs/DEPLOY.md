# Deploy

## On docker host
* Generate your conf or copy .env.example .env
* Build image
```
make build
```
* Start stack (api and db)
```
make up
```
* Stop stack
```
make down
```

## On heroku / mongoatlas
* On mongoatlas:
  * create project/cluster
  * add whitelist
  * create admin account (strapi, auto password)
  * get connections url, in the form of `DATABASE_URI=mongodb+srv://<username>:<password>@cluster0.XXXX.mongodb.net`

* On heroku:
  * create api-bacc app
  * Choose Deployment method: github connect this repo
  * Set Stack container type
```
heroku -a api-bacc stack:set container
```

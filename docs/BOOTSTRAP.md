# Bootstrap api baac (to generate from scratch)

* run command to generate all files for the api in backend directory (use the docker-compose.boostrap.yml)

```bash
docker-compose -f docker-compose.boostrap.yml  run --rm --entrypoint /bin/bash api -c "npx create-strapi-app backend --quickstart --no-run --use-npm --dbclient mongo --dbhost mongoapi --dbport 27017 --dbname baac --dbusername strapi --dbpassword password"
```

```
# output
npx: installed 91 in 27.906s
Creating a new Strapi application at /srv/app/backend.

Creating a project from the database CLI arguments.
Creating files.
Dependencies installed successfully.                                                                                                                                                                                                                                                                                                        Your application was created at /srv/app/backend.

Available commands in your project:

  npm run develop
  Start Strapi in watch mode.

  npm run start
  Start Strapi without watch mode.

  npm run build
  Build Strapi admin panel.

  npm run strapi
  Display all available commands.

You can start by doing:

  cd /srv/app/backend
  npm run develop
```

* To disable strapi telemetry, remove uuid register from backend/package.json (see https://strapi.io/documentation/v3.x/getting-started/usage-information.html#how-to-opt-out)

* Change backend/config/database.js to use DATABASE_URI instead of DATABASE_ variables from .env
```
        client: env('DATABASE_CLIENT', 'mongo'),
        uri: env('DATABASE_URI', ''),
```

* add .env file
```bash
DATABASE_URI=mongodb://strapi:password@api_mongo:27017
```

* add strapi plugin:  documentation or graphql
```
docker-compose -f docker-compose.dev.yml run --rm --entrypoint /bin/bash api -c "strapi install documentation graphql"
```

* install api "usager"
```
# Get colums form csv
head -1 data/usagers-2018.csv  | tr -d '\r' | awk ' BEGIN { RS="," } { print $1":string" } '  |xargs
# 
docker-compose -f docker-compose.dev.yml run --rm --entrypoint /bin/bash api -c "strapi generate:api usager Num_Acc:string senc:string catv:string occutc:string obs:string obsm:string choc:string manv:string num_veh:string"
```
Fix "num_acc" upper case in models/usage.settings.json

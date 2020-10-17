# Install

## Steps
* requirements: docker, docker-compose
* reference: installation doc strapi
* (only once) bootstrap: explain how to generate code from scratch
* configure via web ui '/admin'
* backend directory: code for api baac
  * backend: `strapi`
  * backend/api: code definition for api baac
  * backend/config: configuration files
  * database type: `mongo`
  * database name: `baac`
* data dir:
* scripts:
  * url public data
  * seed scripts (import)

## Reference/requirements
- [Strapi installation docs. Installing using Docker](https://strapi.io/documentation/v3.x/installation/docker.html)
  - In Step 1, we select the MongoDB tab
- [Docker Compose file version 3 reference](https://docs.docker.com/compose/compose-file/)

- Usefull Files
  - docker/docker-compose files:
    - docker-compose.dev.yml: to run backend and db. Allow to edit dynamically code files
    - docker-compose.prod.yml: to run backend and db in production mode (build image,run container)
    - Dockerfile: used in production mode to build api backend container based on strapi and code files
    - docker-compose.import.yml: to convert and import data on api or db instances
  - .env config files : see [`.env.example`](.env.example)
  - Makefile to build/up/down api stack

## Usefull Commands

* To run app container in `developement` mode and edit dynamically code file
```bash
# set .env file
# (optionnal) set env proxy and npm registry before
make down-dev up-dev
make up-dev
```
or
```bash
docker-compose -f docker-compose.dev.yml up
```

* To run app container in `production` mode

```bash
# set .env file
# (optionnal) set env proxy and npm registry before
make build
make down up
make test
make down
```
or
```bash
docker-compose -f docker-compose.prod.yml up
```

* To fix npm `package*.json`
```bash
docker-compose -f docker-compose.dev.yml run --rm --entrypoint /bin/bash api -c "npm install"
```

* To run `npm audit`
```bash
docker-compose -f docker-compose.dev.yml run --rm --entrypoint /bin/bash api -c "npm audit"
```

* To show all logs (or services logs)
```bash
docker-compose -f docker-compose.dev.yml logs -f 
# or
docker-compose -f docker-compose.dev.yml logs -f  api
```

* To show strapi help
```bash
docker-compose -f docker-compose.dev.yml run --rm --entrypoint /bin/bash api -c "strapi --help"
```
```
Usage: strapi [options] [command]

Options:
  -v, --version                                   output the version number
  -h, --help                                      output usage information

Commands:
  version                                         output your version of Strapi
  console                                         open the Strapi framework console
  new [options] <directory>                       create a new application
  start                                           Start your Strapi application
  develop|dev [options]                           Start your Strapi application in development mode
  generate:api [options] <id> [attributes...]     generate a basic API
  generate:controller [options] <id>              generate a controller for an API
  generate:model [options] <id> [attributes...]   generate a model for an API
  generate:policy [options] <id>                  generate a policy for an API
  generate:service [options] <id>                 generate a service for an API
  generate:plugin [options] <id>                  generate a basic plugin
  build [options]                                 Builds the strapi admin app
  install [plugins...]                            install a Strapi plugin
  uninstall [options] [plugins...]                uninstall a Strapi plugin
  watch-admin [options]                           Starts the admin dev server
  configuration:dump|config:dump [options]
  configuration:restore|config:restore [options]
  help                                            output the help
  *

```


## Add plugins
* documentation
* graphql

## Manualy configure via WebUI
After service up, point your browser at the ip of your host

- http://192.168.88.888:80/admin)

### First Content Type

As usual, create admin user, then create an `caracteristiques` content type, for example.

### 

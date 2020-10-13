# Install

## Steps
* requirements: docker, docker-compose
* reference: installation doc strapi
* bootstrap: explain how to generate code from scratch -(only once)
* data:
  * url public data
  * seed scripts (import)

* backend: code for api baac
  * backend: `strapi`
  * backend/api: code definition for api baac
  * backend/config: configuration files
  * database type: `mongo`
  * database name: `baac`

## Reference/requirements
- [Strapi installation docs. Installing using Docker](https://strapi.io/documentation/v3.x/installation/docker.html)
  - In Step 1, we select the MongoDB tab
- [Docker Compose file version 3 reference](https://docs.docker.com/compose/compose-file/)

- Usefull Files
  - docker/docker-compose files:
    - docker-compose.dev.yml: to run backend and db. Allow to edit dynamically code files
    - docker-compose.prod.yml: to run backend and db in production mode (build image,run container)
    - Dockerfile: used in production mode to build api backend container based on strapi and code files
  - .env config files : see [`.env.example`](.env.example)
  - Makefile to build/up/down api stack

## Usefull Commands

* To fix npm `package*.json`
```bash
docker-compose -f docker-compose.dev.yml run --rm --entrypoint /bin/bash api -c "npm install"
```

* To run `npm audit`
```bash
docker-compose -f docker-compose.dev.yml run --rm --entrypoint /bin/bash api -c "npm audit"
```

* To run app container in developement mode and edit dynamically code file
```bash
make down-dev up-dev
```
or
```bash
docker-compose -f docker-compose.dev.yml up
```

* To run app container in production mode

```bash
make down up
```
or
```bash
docker-compose up
```

* To show all logs (or services logs)
```bash
docker-compose -f docker-compose.dev.yml logs -f 
# or
docker-compose -f docker-compose.dev.yml logs -f  api
```

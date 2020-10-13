
DC      = docker-compose
DC_DEV  = docker-compose.dev.yml
DC_PROD = docker-compose.prod.yml

# cli docker-compose
DC_BUILD_ARGS := --pull --no-cache --force-rm
DC_RUN_ARGS   := -d --no-build


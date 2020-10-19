SHELL := /bin/bash
APP := api-baac
STRAPI_VERSION=3.2.4
STRAPI_BASE_VERSION=12

DC      = docker-compose
DC_DEV  = docker-compose.dev.yml
DC_PROD = docker-compose.prod.yml
DC_IMPORT = docker-compose.import.yml

# cli docker-compose
DC_BUILD_ARGS := --pull --no-cache --force-rm
DC_RUN_ARGS   := -d --no-build

# detect tty
DOCKER_USE_TTY := $(shell test -t 1 && echo "-t" )
DC_USE_TTY     := $(shell test -t 1 || echo "-T" )

DATA_PATH := data
DATA_SETS = caracteristiques-2018 lieux-2018 usagers-2018 vehicules-2018
DATABASE_URI :=
DATABASE_NAME :=

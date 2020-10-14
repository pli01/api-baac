SHELL := /bin/bash
APP=api-bacc

DC      = docker-compose
DC_DEV  = docker-compose.dev.yml
DC_PROD = docker-compose.prod.yml

# cli docker-compose
DC_BUILD_ARGS := --pull --no-cache --force-rm
DC_RUN_ARGS   := -d --no-build

# detect tty
DOCKER_USE_TTY := $(shell test -t 1 && echo "-t" )
DC_USE_TTY     := $(shell test -t 1 || echo "-T" )

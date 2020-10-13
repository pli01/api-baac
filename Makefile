### wrapper around docker-compose

# default variables
include Makefile.mk
export

check-dc-config-dev:
	${DC} -f $(DC_DEV) config -q

up-dev: check-dc-config-dev
	${DC} -f ${DC_DEV} up ${DC_RUN_ARGS}
down-dev: check-dc-config-dev
	${DC} -f ${DC_DEV} down

check-dc-config-prod:
	${DC} -f $(DC_PROD) config -q
build: check-dc-config-prod
	${DC} -f ${DC_PROD} build ${DC_BUILD_ARGS}
up: check-dc-config-prod
	${DC} -f ${DC_PROD} up ${DC_RUN_ARGS}
down: check-dc-config-prod
	${DC} -f ${DC_PROD} down

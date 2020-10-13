DC      = docker-compose
DC_DEV  = docker-compose.dev.yml
DC_PROD = docker-compose.prod.yml

export

up-dev:
	${DC} -f ${DC_DEV} up
down-dev:
	${DC} -f ${DC_DEV} down

build:
	${DC} -f ${DC_PROD} build
up:
	${DC} -f ${DC_PROD} up
down:
	${DC} -f ${DC_PROD} down
